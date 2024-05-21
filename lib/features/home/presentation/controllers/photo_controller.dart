import 'package:flutter_gallery_app/core/utils/time_helper.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/pagination.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/pagination_filter.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/photo.dart';
import 'package:flutter_gallery_app/features/home/domain/usecases/get_photos.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PhotoController {
  final GetPhotos getPhotos;
  late PagingController<int, Photo> pagingController;
  final pageSize = 10;

  PhotoController({required this.getPhotos}) {
    pagingController = PagingController(firstPageKey: 1);
    pagingController.addPageRequestListener(_fetchPage);
  }

  void _fetchPage(int pageKey) async {
    var daySegment = TimeHelper.getDaySegment(DateTime.now());
    final result = await getPhotos(PaginationFilter(
        pagination: Pagination(page: pageKey, perPage: pageSize),
        query: daySegment));
    result.fold(
      (failure) {
        pagingController.error = failure.toString();
      },
      (newPhotos) {
        final isLastPage = newPhotos.length < pageSize;
        if (isLastPage) {
          pagingController.appendLastPage(newPhotos);
        } else {
          final nextPageKey = pageKey + 1;
          pagingController.appendPage(newPhotos, nextPageKey);
        }
      },
    );
  }

  void dispose() {
    pagingController.dispose();
  }
}
