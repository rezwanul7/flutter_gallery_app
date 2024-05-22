import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/photo.dart';
import 'package:flutter_gallery_app/features/home/presentation/controllers/photo_controller.dart';
import 'package:flutter_gallery_app/core/widgets/grid_view_error_indicator.dart';
import 'package:flutter_gallery_app/features/home/presentation/widgets/photo_details_dialog.dart';
import 'package:flutter_gallery_app/injection_container.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class GalleryView extends StatefulWidget {
  const GalleryView({super.key});

  @override
  State<GalleryView> createState() => _GalleryViewState();
}

class _GalleryViewState extends State<GalleryView> {
  final PhotoController _photoController = locator<PhotoController>();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => Future.sync(
        () => _photoController.pagingController.refresh(),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
        child: PagedMasonryGridView<int, Photo>(
          pagingController: _photoController.pagingController,
          builderDelegate: PagedChildBuilderDelegate<Photo>(
            itemBuilder: (context, item, index) => Padding(
              padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
              child: GestureDetector(
                onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return PhotoDetailsDialog(imageUrl: item.regularUrl, description: item.description);
                  },
                ),
                child: GridTile(
                  child: CachedNetworkImage(
                      imageUrl: item.thumbUrl,
                      errorWidget: (context, url, error) => Container()),
                ),
              ),
            ),
            firstPageErrorIndicatorBuilder: (context) => InfiniteScrollErrorIndicator(
              onTryAgain: () =>
                  _photoController.pagingController.retryLastFailedRequest(),
            ),
            newPageProgressIndicatorBuilder: (_) => Container(),
            newPageErrorIndicatorBuilder: (context) => InfiniteScrollErrorIndicator(
              displayMessage: false,
              onTryAgain: () =>
                  _photoController.pagingController.retryLastFailedRequest(),
            ),
          ),
          gridDelegateBuilder: (int childCount) {
            return const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _photoController.dispose();
    super.dispose();
  }
}

