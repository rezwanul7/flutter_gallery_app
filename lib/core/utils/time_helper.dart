class TimeHelper {
  static const int morningStart = 6;  // 6 AM
  static const int afternoonStart = 12;  // 12 PM
  static const int eveningStart = 18;  // 6 PM
  static const int nightStart = 21;  // 9 PM
  static const int nightEnd = 6;  // 6 AM

  static String getDaySegment(DateTime time) {
    final hour = time.hour;

    if (hour >= morningStart && hour < afternoonStart) {
      return 'Morning';
    } else if (hour >= afternoonStart && hour < eveningStart) {
      return 'Afternoon';
    } else if (hour >= eveningStart && hour < nightStart) {
      return 'Evening';
    } else {
      return 'Night';
    }
  }
}