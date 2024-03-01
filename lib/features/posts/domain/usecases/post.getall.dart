import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/posts/domain/repositories/post.dart';

import '../entites/post.dart';

class GetAllPostsUseCase implements UseCaseWithParams<List<Post>, int> {
  final PostRepository _repository;

  GetAllPostsUseCase(this._repository);

  @override
  Future<ApiResult<List<Post>>> call(int page) async {
    return await _repository.getAllPosts(page);
  }
}