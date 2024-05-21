import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/pagination.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/pagination_filter.dart';
import 'package:flutter_gallery_app/features/home/domain/usecases/get_photos.dart';
import 'package:flutter_gallery_app/features/home/presentation/blocs/photo_events.dart';
import 'package:flutter_gallery_app/features/home/presentation/blocs/photo_states.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final GetPhotos getPhotos;

  PhotoBloc({required this.getPhotos}) : super(PhotoInitial()) {
    on<GetPhotosEvent>((event, emit) async {
      emit(PhotoLoading());
      final failureOrPhotos =
          await getPhotos(PaginationFilter(pagination: Pagination(page: event.page, perPage: event.perPage)));
      failureOrPhotos.fold(
        (failure) => emit(PhotoError(message: 'Failed to load photos')),
        (newPhotos) {
          bool hasReachedMax = newPhotos.length < event.perPage;
          emit(PhotoLoaded(photos: newPhotos, hasReachedMax: hasReachedMax));
        },
      );
    });
  }
}
