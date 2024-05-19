import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/photo.dart';
import 'package:flutter_gallery_app/features/home/presentation/blocs/photo_bloc.dart';
import 'package:flutter_gallery_app/features/home/presentation/blocs/photo_events.dart';
import 'package:flutter_gallery_app/features/home/presentation/blocs/photo_states.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PhotoView extends StatefulWidget {
  const PhotoView({super.key});

  @override
  State<PhotoView> createState() => _PhotoViewState();
}

class _PhotoViewState extends State<PhotoView> {
  final PagingController<int, Photo> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      context.read<PhotoBloc>().add(GetPhotosEvent(page: pageKey, perPage: 10));
    });
  }

  @override
  void dispose() {
    _pagingController.dispose();
    context.read<PhotoBloc>().close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PhotoBloc, PhotoState>(
      listener: (context, state) {
        if (state is PhotoLoaded) {
          _pagingController.appendPage(
              state.photos, state.hasReachedMax ? null : state.photos.length);
        } else if (state is PhotoError) {
          _pagingController.error = true;
          // Center(child: Text(state.message))
        }
      },
      child: PagedListView<int, Photo>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Photo>(
          itemBuilder: (context, item, index) {
            return ListTile(
              leading: Image.network(item.thumbUrl),
              title: Text('Photo ${item.id}'),
            );
          },
        ),
      ),
    );
  }
}
