class Speed implements Comparable<Speed> {
    ///meters per second to:
    static const double _msec_to_kilometers_per_hour = 3.6;
    static const double _msec_to_mile_per_hour = 2.23693629;
    static const double _msec_to_knot = 1.94384449;

    ///other measurements to meters per second
    static const double _kmh_to_msec = 0.27777777777778;
    static const double _mph_to_msec = 0.44704;
    static const double _knot_to_msec = 0.514444444;

    /*
   * The value of this Speed object in m/s = meter per second .
   */
    final double _speed;

    const Speed.fromMeterPerSecond({double value : 0.0}) : _speed = value;
    const Speed.fromKilometerPerHour({double value : 0.0}) : _speed = _kmh_to_msec * value;
    const Speed.fromMilePerHour({double value: 0.0}): _speed = _mph_to_msec * value;
    const Speed.fromKnot({double value: 0.0}): _speed = _knot_to_msec * value;

    double get inMeterPerSecond => _speed > 0.0 ? _speed : 0.0;
    double get inKilometerPerHour => _speed > 0.0 ? _msec_to_kilometers_per_hour * _speed : 0.0;
    double get inMilePerHour => _speed > 0.0 ? _msec_to_mile_per_hour * _speed : 0.0;
    double get inKnot => _speed > 0.0 ? _msec_to_knot * _speed : 0.0;

    /**
     * Compares this Speed to [other], returning zero if the values are equal.
     *
     * Returns a negative integer if this `Speed` is shorter than
     * [other], or a positive integer if it is longer.
     *
     * A negative `Speed` is always considered shorter than a positive one.
     *
     */
    int compareTo(Speed other) => _speed.compareTo(other._speed);
}