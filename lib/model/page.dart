import 'package:education_tiktok/model/question.dart';

class PageModel {
  PageModel({
    required this.uid,
    required this.card,
  });
  final String uid;
  Question? card;
}
