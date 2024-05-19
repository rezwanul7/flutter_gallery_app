import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/features/home/presentation/blocs/photo_bloc.dart';
import 'package:flutter_gallery_app/features/home/presentation/widgets/photo_view.dart';
import 'package:flutter_gallery_app/injection_container.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Unsplash Photos')),
      body: BlocProvider(
        create: (context) => locator<PhotoBloc>(),
        child: const PhotoView(),
      ),
    );
  }
}
