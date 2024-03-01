import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/posts/domain/entites/post.dart';

import '../repositories/post.dart';

class DeletePostUseCase implements UseCaseWithParams<bool, Post> {
  final PostRepository _repository;

  DeletePostUseCase(this._repository);

  @override
  Future<ApiResult<bool>> call(Post params) async {
    final id = params.id;

    return await _repository.deletePost(id!);
  }
}