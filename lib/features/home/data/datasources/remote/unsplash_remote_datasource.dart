import 'package:flutter_gallery_app/features/home/data/models/photo_model.dart';

abstract class UnsplashRemoteDataSource {
  Future<List<PhotoModel>> getPhotos({required int page, required int perPage, String? query});
}