import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class PhotoEvent extends Equatable {
  const PhotoEvent();

  @override
  List<Object> get props => [];
}

class GetPhotosEvent extends PhotoEvent {
  final int page;
  final int perPage;

  const GetPhotosEvent({required this.page, required this.perPage});

  @override
  List<Object> get props => [page, perPage];
}
