import 'package:dio/dio.dart';
import 'package:flutter_gallery_app/core/error/failures.dart';
import 'package:flutter_gallery_app/features/home/data/datasources/remote/unsplash_remote_datasource.dart';
import 'package:flutter_gallery_app/features/home/data/models/photo_model.dart';
import 'package:logger/logger.dart';

class UnsplashRemoteDataSourceImpl implements UnsplashRemoteDataSource {
  final Dio dio;
  final Logger logger;

  UnsplashRemoteDataSourceImpl({required this.dio, required this.logger});

  @override
  Future<List<PhotoModel>> getPhotos(
      {required int page, required int perPage, String? query}) async {
    try {
      final response = await dio.get(
        '/search/photos',
        queryParameters: {
          'page': page,
          'per_page': perPage,
          'query': query,
        },
        options: Options(
          headers: {
            'Authorization':
                'Client-ID z66m12Nu8SGyhUixAo923x3BxeXLMl4RZmq4f2oFuGE',
          },
        ),
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonResponse = response.data["results"];
        return jsonResponse.map((json) => PhotoModel.fromJson(json)).toList();
      } else {
        throw ServerFailure();
      }
    } catch (error, stackTrace) {
      logger.e(error.toString(), error: error, stackTrace: stackTrace);
      throw ServerFailure();
    }
  }
}
