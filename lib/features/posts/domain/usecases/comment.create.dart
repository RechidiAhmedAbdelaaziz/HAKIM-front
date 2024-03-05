import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../entites/comment.dart';
import '../repositories/comment.dart';

class CreateCommentUseCase extends UseCase<Comment, Comment> {
  final CommentRepository _repository;

  CreateCommentUseCase(this._repository);

  @override
  Future<ApiResult<Comment>> call(Comment params) async {
    return await _repository.createComment(params.toModel());
  }
}
