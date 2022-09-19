import 'package:fizyo_app_frontend/src/users_managments/domain/client.dart';

abstract class ClientRepository {
  Future<List<Client>?> getClients();
  Future<Client> getClient({required String id});
  Future<void> createClient({required Client clnt});
  Future<void> updateClient({required Client clnt});
  Future<void> deleteClient({required String id});
}
