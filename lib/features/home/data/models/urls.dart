import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'urls.g.dart';

@JsonSerializable()
class Urls extends Equatable {
  final String thumb;
  final String regular;
  final String full;

  const Urls({required this.thumb, required this.regular, required this.full});

  factory Urls.fromJson(Map<String, dynamic> json) =>
      _$UrlsFromJson(json);

  Map<String, dynamic> toJson() => _$UrlsToJson(this);

  @override
  List<Object> get props => [thumb, regular, full];
}
