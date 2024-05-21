import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/features/home/presentation/pages/photo_page.dart';
import 'package:flutter_gallery_app/themes/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Gallery',
      theme: MaterialTheme(Theme.of(context).textTheme).lightHighContrast(),
      home: const PhotoPage(),
    );
  }
}
