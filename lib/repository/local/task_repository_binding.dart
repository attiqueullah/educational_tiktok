import 'package:get/get.dart';
import 'taskRepository.dart';
import 'taskRepositoryImp.dart';

class TaskRepositoryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskRepository>(
      () => TaskRepositoryImp(),
      tag: (TaskRepository).toString(),
    );
  }
}
