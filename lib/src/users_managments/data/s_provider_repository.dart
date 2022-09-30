import '../domain/service_provider.dart';

abstract class ServiceProviderRepository {
  Future<List<ServiceProvider>?> getServiceProviders();
  Future<ServiceProvider> getServiceProvider({required String id});
  Future<void> creatServiceProvider({required ServiceProvider serviceProvider});
  Future<void> updateServiceProvider(
      {required ServiceProvider serviceProvider});
  Future<void> deleteServiceProvider({required String id});
}
