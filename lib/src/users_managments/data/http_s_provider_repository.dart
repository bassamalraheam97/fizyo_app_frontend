// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';

import 'package:fizyo_app_frontend/src/users_managments/data/s_provider_repository.dart';
import 'package:fizyo_app_frontend/src/users_managments/domain/service_provider.dart';

class HttpserviceProviderRepository extends ServiceProviderRepository {
  final Dio provider;
  HttpserviceProviderRepository({
    required this.provider,
  });
  @override
  Future<void> creatServiceProvider(
      {required ServiceProvider serviceProvider}) async {
    await provider.post("/serviceProviders/create",
        data: serviceProvider.toJson());
  }

  @override
  Future<void> deleteServiceProvider({required String id}) async {
    await provider.delete("/serviceProviders/$id");
  }

  @override
  Future<ServiceProvider> getServiceProvider({required String id}) async {
    final response =
        await provider.get<Map<String, Object>>("/serviceProviders/$id");
    if (response.statusCode == 404 || response.data == null)
      throw Exception("Provider Not Found");
    return ServiceProvider.fromJson(response.data!);
  }

  @override
  Future<List<ServiceProvider>?> getServiceProviders() async {
    final response =
        await provider.get<List<Map<String, Object>>>("/serviceProviders");
    if (response.statusCode == 404 || response.data == null)
      throw Exception("Provider Not Found");
    return response.data
        ?.map((providerDoc) => ServiceProvider.fromJson(providerDoc))
        .toList();
  }

  @override
  Future<void> updateServiceProvider(
      {required ServiceProvider serviceProvider}) async {
    await provider.put("/serviceProviders/${serviceProvider.id}",
        data: serviceProvider.toJson());
  }
}
