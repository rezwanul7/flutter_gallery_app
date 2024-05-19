import 'package:equatable/equatable.dart';

class Photo extends Equatable {
  final String id;
  final String? description;
  final String thumbUrl;
  final String regularUrl;
  final String fullUrl;

  const Photo({
    required this.id,
    this.description,
    required this.thumbUrl,
    required this.regularUrl,
    required this.fullUrl,
  });

  @override
  List<Object?> get props => [id, description, thumbUrl, regularUrl, fullUrl];
}
