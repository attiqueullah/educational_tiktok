import 'package:education_tiktok/model/answer.dart';
import 'package:education_tiktok/model/question.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../remote/remote_data_source.dart';
import 'taskRepository.dart';

@singleton
class TaskRepositoryImp implements TaskRepository {
  final RemoteDataSource _remoteSource =
      Get.find(tag: (RemoteDataSource).toString());

  @override
  Future<Question> getFollowings() {
    return _remoteSource.getFollowings();
  }

  @override
  Future<Question> getForYou() {
    return _remoteSource.getForYou();
  }

  @override
  Future<Answer> getAnswer(String qid) {
    return _remoteSource.getAnswer(qid);
  }
}
