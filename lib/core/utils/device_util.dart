import 'package:geolocator/geolocator.dart';

class DeviceUtil {
  static Future<bool> locationPermission() async {
    final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    return [
      LocationPermission.always,
      LocationPermission.whileInUse,
    ].contains(permission);
  }

  static Future<DeviceLatLong?> getCurrentLatLong() async {
    if (!await locationPermission()) {
      return null;
    }
    final Position res = await Geolocator.getCurrentPosition();
    return DeviceLatLong(res.latitude, res.longitude);
  }
}

class DeviceLatLong {
  final double latitude;
  final double longitude;

  DeviceLatLong(this.latitude, this.longitude);
}
