import 'package:geolocator/geolocator.dart';

class LocationUtil {
  const LocationUtil._();

  static LocationUtil instance = const LocationUtil._();

  Future<bool> checkLocationPermission() async {
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

  Future<DeviceLatLong?> getCurrentLocation() async {
    if (!await checkLocationPermission()) {
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
