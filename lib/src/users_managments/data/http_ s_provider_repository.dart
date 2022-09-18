// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';

import 'package:fizyo_app_frontend/src/users_managments/data/s_provider_repository.dart';
import 'package:fizyo_app_frontend/src/users_managments/domain/service_provider.dart';

class HttpserviceProviderRepository extends serviceProviderRepository {
  final Dio provider;
  HttpserviceProviderRepository({
    required this.provider,
  });
  @override
  Future<void> creatService_provider({required Service_provider service_provider}) async{
     await provider.post("/serviceProviders/create",data:service_provider.toJson());
  }

  @override
  Future<void> deleteService_provider({required String id})async {
     await provider.delete("/serviceProviders/$id");
  }

  @override
  Future<Service_provider> getService_provider({required String id})async {
    final response=await provider.get<Map<String,Object>>("/serviceProviders/$id");
    if(response.statusCode==404||response.data==null)
    throw Exception("Provider Not Found");
    return Service_provider.fromJson(response.data!);
    
  }

  @override
  Future<List<Service_provider>?> getService_providers() async{
    final response=await provider.get<List<Map<String,Object>>>("/serviceProviders");
    if(response.statusCode==404||response.data==null)
    throw Exception("Provider Not Found");
    return response.data?.map((providerDoc) =>Service_provider.fromJson(providerDoc)).toList();
  }

  @override
  Future<void> updateService_provider({required Service_provider service_provider})async {
     await provider.put("/serviceProviders/${service_provider.id}",data:service_provider.toJson());
  }

}
