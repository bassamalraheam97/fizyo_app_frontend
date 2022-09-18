import '../domain/service_provider.dart';

abstract class serviceProviderRepository{
  Future<List<Service_provider>?> getService_providers();
  Future<Service_provider> getService_provider({required String id});
  Future<void> creatService_provider({required Service_provider service_provider});
  Future<void> updateService_provider({required Service_provider service_provider});
  Future<void> deleteService_provider({required String id});

}