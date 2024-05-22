import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/core/widgets/theme_toggle.dart';
import 'package:flutter_gallery_app/features/home/presentation/widgets/gallery_view.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title:  Text(
            '*-Unsplash Photos-*',
            style: GoogleFonts.aBeeZee(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: const [
            ThemeToggle(),
          ]),
      body: const GalleryView(),
    );
  }
}
