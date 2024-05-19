import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/features/home/domain/entities/photo.dart';

@immutable
abstract class PhotoState extends Equatable {
  @override
  List<Object> get props => [];
}

class PhotoInitial extends PhotoState {}

class PhotoLoading extends PhotoState {}

class PhotoLoaded extends PhotoState {
  final List<Photo> photos;
  final bool hasReachedMax;

  PhotoLoaded({required this.photos, required this.hasReachedMax});

  @override
  List<Object> get props => [photos, hasReachedMax];
}

class PhotoError extends PhotoState {
  final String message;

  PhotoError({required this.message});

  @override
  List<Object> get props => [message];
}