import 'package:education_tiktok/model/answer.dart';

import '../../model/question.dart';

abstract class RemoteDataSource {
  Future<Question> getFollowings();
  Future<Question> getForYou();
  Future<Answer> getAnswer(String qid);
}
