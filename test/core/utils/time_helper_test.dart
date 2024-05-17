import 'package:flutter_gallery_app/core/utils/time_helper.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test("TimeHelper should return Morning", () {
    // Given
    final time = DateTime(2022, 1, 1, 8, 0, 0);
    // When
    final result = TimeHelper.getDaySegment(time);
    // Then
    expect(result, 'Morning');
  });

  test("TimeHelper should return Afternoon", () {
    // Given
    final time = DateTime(2022, 1, 1, 13, 0, 0);
    // When
    final result = TimeHelper.getDaySegment(time);
    // Then
    expect(result, 'Afternoon');
  });

  test("TimeHelper should return Evening", () {
    // Given
    final time = DateTime(2022, 1, 1, 20, 0, 0);
    // When
    final result = TimeHelper.getDaySegment(time);
    // Then
    expect(result, 'Evening');
  });

  test("TimeHelper should return Night", () {
    // Given
    final time = DateTime(2022, 1, 1, 22, 0, 0);
    // When
    final result = TimeHelper.getDaySegment(time);
    // Then
    expect(result, 'Night');
  });
}
