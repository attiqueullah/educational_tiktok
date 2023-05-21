import 'package:get/get.dart';

import '../repository/local/task_repository_binding.dart';
import '../repository/remote/remote_source_binding.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    TaskRepositoryBinding().dependencies();
    RemoteRepositoryBinding().dependencies();
  }
}
