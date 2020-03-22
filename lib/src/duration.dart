/// Duration units class
extension DurationUnits on Duration {
  /// Elapsed days
  int get days {
    var d = 0;
    final secs = this.inSeconds;
    if (secs > Duration.secondsPerDay) {
      d = int.parse((secs / Duration.secondsPerDay).toStringAsFixed(0));
    }
    return d;
  }

  /// Elapsed hours
  int get hours {
    var h = 0;
    final d = this - Duration(days: days);
    if (d.inSeconds > Duration.secondsPerHour) {
      h = int.parse((d.inSeconds / Duration.secondsPerHour).toStringAsFixed(0));
    }
    return h;
  }

  /// Elapsed minutes
  int get minutes {
    var h = 0;
    final d = this - Duration(days: days, hours: hours);
    if (d.inSeconds > Duration.secondsPerMinute) {
      h = int.parse(
          (d.inSeconds / Duration.secondsPerMinute).toStringAsFixed(0));
    }
    return h;
  }

  /// Elapsed seconds
  int get seconds {
    final d = this - Duration(days: days, hours: hours, minutes: minutes);
    return d.inSeconds;
  }
}
