import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/pagination.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/photo.dart';
import 'package:flutter_gallery_app/features/home/domain/usecases/get_photos.dart';
import 'package:flutter_gallery_app/features/home/presentation/blocs/photo_events.dart';
import 'package:flutter_gallery_app/features/home/presentation/blocs/photo_states.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final GetPhotos getPhotos;

  PhotoBloc({required this.getPhotos}) : super(PhotoInitial()) {
    on<GetPhotosEvent>((event, emit) async {
      final currentState = state;

      if (currentState is PhotoLoaded && currentState.hasReachedMax) return;

      if (currentState is PhotoInitial ||
          (currentState is PhotoLoaded && !currentState.hasReachedMax)) {
        emit(PhotoLoading());

        final failureOrPhotos = await getPhotos(
            Pagination(page: event.page, perPage: event.perPage));
        failureOrPhotos.fold(
          (failure) => emit(PhotoError(message: 'Failed to load photos')),
          (newPhotos) {
            bool hasReachedMax = newPhotos.length < event.perPage;
            final List<Photo> photos =
                List.of(currentState is PhotoLoaded ? currentState.photos : [])
                  ..addAll(newPhotos);
            emit(PhotoLoaded(photos: photos, hasReachedMax: hasReachedMax));
          },
        );
      }
    });
  }
}
