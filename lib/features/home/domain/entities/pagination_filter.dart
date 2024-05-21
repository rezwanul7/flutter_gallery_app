import 'package:flutter_gallery_app/features/home/domain/entities/pagination.dart';

class PaginationFilter {
  final Pagination pagination;
  String? query;

  PaginationFilter({required this.pagination, this.query});
}
