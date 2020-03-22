import 'package:duration_units/duration_units.dart';

void main() {
  const d = Duration(days: 3, hours: 3, minutes: 3, seconds: 3);
  print("Duration: ${d.days} days, ${d.hours} hours, "
      "${d.minutes} minutes, ${d.seconds} seconds");
}
