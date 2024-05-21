import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/app.dart';
import 'package:flutter_gallery_app/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocator();
  runApp(const App());
}
