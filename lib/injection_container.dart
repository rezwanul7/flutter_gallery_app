import 'package:dio/dio.dart';
import 'package:flutter_gallery_app/features/home/data/datasources/remote/unsplash_remote_datasource.dart';
import 'package:flutter_gallery_app/features/home/data/datasources/remote/unsplash_remote_datasource_impl.dart';
import 'package:flutter_gallery_app/features/home/data/repositories/photo_repository_impl.dart';
import 'package:flutter_gallery_app/features/home/domain/repositories/photo_repository.dart';
import 'package:flutter_gallery_app/features/home/domain/usecases/get_photos.dart';
import 'package:flutter_gallery_app/features/home/presentation/blocs/photo_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  // BLoC
  locator.registerFactory(() => PhotoBloc(getPhotos: locator()));

  // Use Cases
  locator.registerLazySingleton(() => GetPhotos(locator()));

  // Repository
  locator.registerLazySingleton<PhotoRepository>(
      () => PhotoRepositoryImpl(remoteDataSource: locator()));

  // Data sources
  locator.registerLazySingleton<UnsplashRemoteDataSource>(
      () => UnsplashRemoteDataSourceImpl(dio: locator(), logger: locator()));

  // External
  locator.registerLazySingleton(() => Dio());
  locator.registerLazySingleton(() => Logger(
        printer: PrettyPrinter(),
      ));
}
