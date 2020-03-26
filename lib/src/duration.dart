/// Duration units class
extension DurationUnits on Duration {
  /// Elapsed days
  int get days {
    var d = 0;
    final secs = this.inSeconds;
    if (secs >= Duration.secondsPerDay) {
      d = secs ~/ Duration.secondsPerDay;
    }
    return d;
  }

  /// Elapsed hours
  int get hours {
    var h = 0;
    final d = this - Duration(days: days);
    if (d.inSeconds >= Duration.secondsPerHour) {
      h = d.inSeconds ~/ Duration.secondsPerHour;
    }
    return h;
  }

  /// Elapsed minutes
  int get minutes {
    var h = 0;
    final d = this - Duration(days: days, hours: hours);
    if (d.inSeconds >= Duration.secondsPerMinute) {
      h = d.inSeconds ~/ Duration.secondsPerMinute;
    }
    return h;
  }

  /// Elapsed seconds
  int get seconds {
    final d = this - Duration(days: days, hours: hours, minutes: minutes);
    return d.inSeconds;
  }
}
