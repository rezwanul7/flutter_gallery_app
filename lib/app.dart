import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/features/home/presentation/blocs/theme_cubit.dart';
import 'package:flutter_gallery_app/features/home/presentation/pages/gallery_page.dart';
import 'package:flutter_gallery_app/themes/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Image Gallery',
            theme: themeState == ThemeState.light
                ? MaterialTheme(Theme.of(context).textTheme).lightHighContrast()
                : MaterialTheme(Theme.of(context).textTheme).darkHighContrast(),
            home: const PhotoPage(),
          );
        },
      ),
    );
  }
}
