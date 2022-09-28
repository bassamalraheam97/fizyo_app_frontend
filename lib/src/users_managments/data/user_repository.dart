import 'package:fizyo_app_frontend/src/users_managments/domain/user.dart';

abstract class UserRepository {
  Future<List<User>?> getUsers(String token);
  Future<User> getUser({required String id});
  Future<void> createUser({required User user});
  Future<void> updateUser({required User user});
  Future<void> deleteUser({required String id});
  Future<String> login({required String email, required String password});
}
