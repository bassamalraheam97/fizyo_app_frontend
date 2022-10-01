import 'package:dio/dio.dart';
import '../domain/user.dart';

abstract class UserRepository {
  Future<String> login({required String email, required String password});
  Future<List<User>?> getUsers(String token);
  Future<User> getUser({required String id});
  Future<void> createUser({required User user});
  Future<void> updateUser({required User user});
  Future<void> deleteUser({required String id});
  Future<String> forgetPassword({required String email});
  Future<String> sendCode({required String email});
}
