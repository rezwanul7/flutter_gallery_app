import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/features/home/presentation/widgets/gallery_view.dart';
import 'package:flutter_gallery_app/features/home/presentation/widgets/theme_toggle.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Unsplash Photos',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          actions: const [
            ThemeToggle(),
          ]),
      body: const PhotoView(),
    );
  }
}
