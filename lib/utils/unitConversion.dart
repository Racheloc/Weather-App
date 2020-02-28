import 'dart:math';

double convertKelvinToCelcius(double degreesKelvin) {
  return _roundDouble(degreesKelvin - 273.15, 2);
}

double _roundDouble(double value, int places) {
  double mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

String convertTimestampToDate(int timestamp) {
  return _getWeekdayFromPosition(
      new DateTime.fromMillisecondsSinceEpoch(timestamp * 1000, isUtc: true)
          .weekday);
}

String _getWeekdayFromPosition(int pos) {
  switch (pos) {
    case 1:
      return "Mon";
      break;
    case 2:
      return "Tue";
      break;
    case 3:
      return "Wed";
      break;
    case 4:
      return "Thurs";
      break;
    case 5:
      return "Fri";
      break;
    case 6:
      return "Sat";
      break;
    case 7:
      return "Sun";
      break;
    default:
      return "N/A";
  }
}

String getCompassDirectionFromDegrees (int degrees) {
  if (degrees >= 315 || degrees < 45) {
    return "N";
  } else if (degrees >= 45 && degrees < 135) {
    return "E";
  } else if (degrees >= 135 && degrees < 225) {
    return "S";
  } else {
    return "W";
  }
}

String getSpecificCompassDirection(int degrees) {
  if (degrees >= 22.5 || degrees < 67.5) {
    return "NE";
  }else if (degrees >= 337.5 && degrees < 22.5) {
    return "N";
}else if (degrees >= 112.5 && degrees < 157.5) {
    return "SE";
  }else if (degrees >= 202.5 && degrees < 247.5) {
    return "SW";
  }else if (degrees >= 157.5 && degrees < 202.5) {
    return "S";
  }else if (degrees >= 247.5 && degrees < 292.5) {
    return "W";
  }else if (degrees >= 67.5 && degrees < 112.5) {
    return "E";
    }else{
    return "NW";
  }
}