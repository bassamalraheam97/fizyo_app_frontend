import 'package:dio/dio.dart';
import 'package:fizyo_app_frontend/src/users_managments/data/client_repository.dart';
import 'package:fizyo_app_frontend/src/users_managments/data/s_provider_repository.dart';
import 'package:fizyo_app_frontend/src/users_managments/data/user_repository.dart';
import 'package:fizyo_app_frontend/src/users_managments/domain/client.dart';
import 'package:fizyo_app_frontend/src/users_managments/domain/documents.dart';
import 'package:fizyo_app_frontend/src/users_managments/domain/service_provider.dart';
import 'package:fizyo_app_frontend/src/users_managments/domain/user.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AccountsService {
  final UserRepository userRepository;
  final ServiceProviderRepository serviceProviderRepository;
  final ClientRepository clientRepository;
  AccountsService({
    required this.serviceProviderRepository,
    required this.clientRepository,
    required this.userRepository,
  });
  Future<void> createAccount(FormGroup formGroup) async {
    Map<String, dynamic> userMap = {
      'email': formGroup.control('email').value,
      'phoneNumber': formGroup.control('phoneNumber').value,
      // 'profilePicture': formGroup.control('profilePicture').value ??
      //     formGroup.control('profileImage').value,
      'password': formGroup.control('password').value,
      'firstName': formGroup.control('firstName').value,
      'lastName': formGroup.control('lastName').value,
      'gender': formGroup.control('gender').value,
      'DOB': '1969-07-20 20:18:04Z',
      'verified': 'notSent',
      'status': 'active',
      'accountType': formGroup.control('accountType').value,
      'maritalStatus': 'single',
    };
    print(userMap);
    User user = User.fromJson(userMap);
    await userRepository.createUser(user: user).catchError((onError) {
      print('$onError +++++++++++++++++++++++++++++++++ErrorUser');
    });
    switch (user.accountType) {
      case AccountType.PT:
        Map<String, dynamic> clientMap = {
          'preferredServiceType':
              formGroup.control('preferredServiceType').value[0],
          'diseases': formGroup.control('diseasesOrSpecialties').value,
          'preferences':
              formGroup.control('attachmentName').value as Map<String, dynamic>
        };
        Client client = Client.fromJson(clientMap);
        await clientRepository.createClient(clnt: client).catchError((onError) {
          print('$onError +++++++++++++++++++++++++++++++++ErrorClient');
        });
        break;
      case AccountType.PA:
        List<Documents> document = [];
        Map<String, dynamic> attachmentMap =
            formGroup.control('attachmentName').value;
        int docCount = attachmentMap.length ~/ 2;
        for (int i = 1; i <= docCount; i++) {
          if (attachmentMap['name$i'].toString().isNotEmpty) {
            document.add(Documents.fromJson({
              'url': attachmentMap['fileInfo$i'][0],
              'name': attachmentMap['name$i'].toString(),
              'attType': attachmentMap['fileInfo$i'][1]
            }));
          }
        }
        Map<String, dynamic> serviceProviderMap = {
          'specialties': formGroup.control('diseasesOrSpecialties').value,
          'document': document,
          'verified': 'rejected',
          'bio': formGroup.control('bio').value,
          'minSessionFee': formGroup.control('min').value,
          'maxSessionFee': formGroup.control('max').value,
          'preferredServiceType':
              formGroup.control('preferredServiceType').value,
        };
        ServiceProvider serviceProvider =
            ServiceProvider.fromJson(serviceProviderMap);
        await serviceProviderRepository
            .creatServiceProvider(serviceProvider: serviceProvider)
            .catchError((onError) {
          print(
              '$onError +++++++++++++++++++++++++++++++++ErrorServiceProvider');
        });
        break;
      default:
    }
  }

  // Future<void> sendCode(String email) async {
  //   var res = await userRepository
  //       .sendCode(email: email)
  //       .catchError((onError) => print('$onError+++++++++++++++'));
  //   // print(res);
  //   // return res.toString();
  // }

  Future<void> forgetPassword(String email) async {
    final res = await userRepository
        .forgetPassword(email: email)
        .catchError((onError) => print('$onError+++++++++++++++'));
    // print(res);
    // return res.toString();
  }
}
