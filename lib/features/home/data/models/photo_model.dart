import 'package:equatable/equatable.dart';
import 'package:flutter_gallery_app/features/home/data/models/urls.dart';
import 'package:json_annotation/json_annotation.dart';

part 'photo_model.g.dart';

@JsonSerializable()
class PhotoModel extends Equatable {
  final String id;
  final String? description;
  final Urls urls;

  const PhotoModel({
    required this.id,
    this.description,
    required this.urls,
  });

  factory PhotoModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoModelFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoModelToJson(this);

  @override
  List<Object?> get props => [id, description, urls];
}
