import 'package:flutter_gallery_app/core/error/failures.dart';
import 'package:flutter_gallery_app/core/usecases/usecase.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/pagination.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/pagination_filter.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/photo.dart';
import 'package:flutter_gallery_app/features/home/domain/repositories/photo_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetPhotos implements UseCase<List<Photo>, PaginationFilter> {
  final PhotoRepository _repository;

  GetPhotos(this._repository);

  @override
  Future<Either<Failure, List<Photo>>> call(PaginationFilter paginationFilter) async {
    return await _repository.getPhotos(page: paginationFilter.pagination.page, perPage: paginationFilter.pagination.perPage, query: paginationFilter.query);
  }
}
