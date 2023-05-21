import '../../model/answer.dart';
import '../../model/question.dart';

abstract class TaskRepository {
  Future<Question> getFollowings();
  Future<Question> getForYou();
  Future<Answer> getAnswer(String qid);
}
