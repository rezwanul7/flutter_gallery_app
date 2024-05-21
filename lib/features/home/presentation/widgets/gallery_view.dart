import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/photo.dart';
import 'package:flutter_gallery_app/features/home/presentation/controllers/photo_controller.dart';
import 'package:flutter_gallery_app/features/home/presentation/widgets/photo_details_dialog.dart';
import 'package:flutter_gallery_app/injection_container.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PhotoView extends StatefulWidget {
  const PhotoView({super.key});

  @override
  State<PhotoView> createState() => _PhotoViewState();
}

class _PhotoViewState extends State<PhotoView> {
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
            firstPageErrorIndicatorBuilder: (context) => ErrorIndicator(
              onTryAgain: () =>
                  _photoController.pagingController.retryLastFailedRequest(),
            ),
            newPageProgressIndicatorBuilder: (_) => Container(),
            newPageErrorIndicatorBuilder: (context) => ErrorIndicator(
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

class ErrorIndicator extends StatelessWidget {
  final VoidCallback onTryAgain;
  final bool displayMessage;

  const ErrorIndicator(
      {super.key, required this.onTryAgain, this.displayMessage = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
              visible: displayMessage,
              child: Text(
                'Something Went Wrong!',
                style: Theme.of(context).textTheme.titleMedium,
              )),
          const SizedBox(height: 8),
          FilledButton(
            onPressed: onTryAgain,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
