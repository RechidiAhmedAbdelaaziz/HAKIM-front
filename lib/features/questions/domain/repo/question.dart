import 'package:front/core/networking/api.result.dart';
import 'package:front/features/questions/data/models/question.dart';
import 'package:front/features/questions/domain/entities/question.dart';

abstract class QuestionRepository {
  Future<ApiResult<List<Question>>> getAllQuestion(int page);
  Future<ApiResult<String?>> addQuestion(QuestionModel question);
  Future<ApiResult<bool>> deleteQuestion(QuestionModel question);
  Future<ApiResult<Question>> update(QuestionModel question);
}
