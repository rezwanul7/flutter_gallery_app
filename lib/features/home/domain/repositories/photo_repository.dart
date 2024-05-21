import 'package:flutter_gallery_app/core/error/failures.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/photo.dart';
import 'package:fpdart/fpdart.dart';

abstract class PhotoRepository {
  Future<Either<Failure, List<Photo>>> getPhotos({required int page, required int perPage, String? query});
}