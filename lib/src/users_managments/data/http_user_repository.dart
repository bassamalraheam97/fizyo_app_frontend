import 'package:dio/dio.dart';
import 'package:fizyo_app_frontend/src/users_managments/data/user_repository.dart';
import 'package:fizyo_app_frontend/src/users_managments/domain/user.dart';

class HttpUserRepository implements UserRepository {
  final Dio client;
  HttpUserRepository(
    this.client,
  );

  @override
  Future<Response> createUser({required User user}) async {
    final response = await client.post("/users/create", data: user.toJson());
    return response;
  }

  @override
  Future<Response> deleteUser({required String id}) async {
    final response = await client.delete("/users/$id");
    return response;
  }

  @override
  Future<User> getUser({required String id}) async {
    final response = await client.get<Map<String, dynamic>>("/users/$id");
    if (response.statusCode == 404 || response.data == null) {
      throw Exception("user not found");
    }
    return User.fromJson(response.data!);
  }

  @override
  Future<List<User>?> getUsers() async {
    final response = await client.get<List<dynamic>>("/users");
    if (response.statusCode == 404 || response.data == null) {
      throw Exception("user not found");
    }
    List<User> users = response.data
            ?.map((e) => User.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [];
    return users;
  }

  @override
  Future<Response> updateUser({required User user}) async {
    final response =
        await client.put("/users/update/${user.id}", data: user.toJson());
    return response;
  }
}
