import 'package:flutter_gallery_app/core/error/failures.dart';
import 'package:flutter_gallery_app/features/home/data/datasources/remote/unsplash_remote_datasource.dart';
import 'package:flutter_gallery_app/features/home/data/models/photo_model.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/photo.dart';
import 'package:flutter_gallery_app/features/home/domain/repositories/photo_repository.dart';
import 'package:fpdart/fpdart.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final UnsplashRemoteDataSource remoteDataSource;

  PhotoRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<Photo>>> getPhotos(
      {required int page, required int perPage, String? query}) async {
    try {
      final List<PhotoModel> photoModels = await remoteDataSource.getPhotos(
          page: page, perPage: perPage, query: query);

      // todo: move the conversion to a mapper class
      final List<Photo> photos = photoModels
          .map((photoModel) => Photo(
                id: photoModel.id,
                description: photoModel.description,
                thumbUrl: photoModel.urls.thumb,
                regularUrl: photoModel.urls.regular,
                fullUrl: photoModel.urls.full,
              ))
          .toList();

      return Right(photos);
    } on ServerFailure {
      return Left(ServerFailure());
    } on Exception {
      return Left(ServerFailure());
    }
  }
}
