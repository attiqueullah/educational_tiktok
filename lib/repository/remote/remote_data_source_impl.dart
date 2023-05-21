import 'package:dio/dio.dart';
import 'package:education_tiktok/model/answer.dart';
import 'package:education_tiktok/model/question.dart';

import '../../Base/base_remote_source.dart';
import '../../network/dio_provider.dart';
import 'remote_data_source.dart';

class RemoteDataSourceImpl extends BaseRemoteSource
    implements RemoteDataSource {
  @override
  Future<Question> getFollowings() {
    var endpoint = "${DioProvider.baseUrl}/following";
    var dioCall = dioClient.get(endpoint);

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => _parseQuestionResponse(response));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Question> getForYou() {
    var endpoint = "${DioProvider.baseUrl}/for_you";
    var dioCall = dioClient.get(endpoint);

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => _parseQuestionResponse(response));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Answer> getAnswer(String qid) {
    var endpoint = "${DioProvider.baseUrl}/reveal?id=$qid";
    var dioCall = dioClient.get(endpoint);

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => _parseAnswerResponse(response));
    } catch (e) {
      rethrow;
    }
  }

  Question _parseQuestionResponse(Response<dynamic> response) {
    return Question.fromJson(response.data);
  }

  Answer _parseAnswerResponse(Response<dynamic> response) {
    return Answer.fromJson(response.data);
  }
}
