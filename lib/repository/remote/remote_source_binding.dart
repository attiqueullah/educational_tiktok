import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import 'remote_data_source.dart';
import 'remote_data_source_impl.dart';

class RemoteRepositoryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RemoteDataSource>(
      () => RemoteDataSourceImpl(),
      tag: (RemoteDataSource).toString(),
    );
  }
}
