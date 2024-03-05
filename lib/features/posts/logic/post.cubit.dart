part of 'index.dart';

class PostCubit extends AppCubit<Post> {
  PostCubit(this._cases);
  final PostUseCases _cases;

  late Post _post;
  Post get post => _post;
  Future<void> like() async => await DoThis(_cases.like, _post, _liked);
  Future<void> unLike() async => await DoThis(_cases.unLike, _post, _liked);
  void _liked(bool x) {
    //TODO Implement Like Function
  }

  Future<void> get(String id) async => await DoThis(_cases.getOne, id, _geted);
  Future<void> update() async => await DoThis(_cases.update, _post, _geted);
  void _geted(Post x) {
    _post = x;
    emitLoaded(x);
  }
}