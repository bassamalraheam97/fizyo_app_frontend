import 'package:dio/dio.dart';
import 'client_repository.dart';
import '../domain/client.dart';

class HttpClientRepository implements ClientRepository {
  final Dio client;
  HttpClientRepository(this.client);

  @override
  Future<Response> createClient({required Client clnt}) async {
    final response = await client.post("/clients/create", data: clnt.toJson());
    return response;
  }

  @override
  Future<Response> deleteClient({required String id}) async {
    final response = await client.delete("/clients/$id");
    return response;
  }

  @override
  Future<Client> getClient({required String id}) async {
    final response = await client.get<Map<String, dynamic>>("/clients/$id");
    if (response.statusCode == 404 || response.data == null) {
      throw Exception("client not found");
    }
    return Client.fromJson(response.data!);
  }

  @override
  Future<List<Client>?> getClients() async {
    final response = await client.get<List<dynamic>>("/clients");
    if (response.statusCode == 404 || response.data == null) {
      throw Exception("clients not found");
    }
    List<Client> clients = response.data
            ?.map((e) => Client.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [];
    return clients;
  }

  @override
  Future<Response> updateClient({required Client clnt}) async {
    final response =
        await client.put("/clients/update/${clnt.id}", data: clnt.toJson());
    return response;
  }
}
