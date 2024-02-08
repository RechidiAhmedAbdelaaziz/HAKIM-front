import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:front/core/networking/res.model.dart';
import 'package:front/features/questions/data/models/question.dart';
import 'package:retrofit/http.dart';
import '../models/question.res.dart';

part 'question.remote.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class QuestionRemoteDataSource {
  factory QuestionRemoteDataSource(Dio dio, {String baseUrl}) =
      _QuestionRemoteDataSource;

  //Get All
  @GET(ApiConstants.questions)
  Future<QuestionListResponse> getAllQuestions();

  //Create Question
  @POST(ApiConstants.questions)
  Future<QuestionResponse> createQuestion(
    @Body() QuestionModel question,
  );

  //Update Question
  @POST("${ApiConstants.questions}/{id}")
  Future<QuestionResponse> updateQuestion(
    @Path("id") String id,
    @Body() QuestionModel update,
  );

  //Delete Question
  @DELETE("${ApiConstants.questions}/{id}")
  Future<DefaultResponse> deleteQuestion(
    @Path("id") String id,
  );

}