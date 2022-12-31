import 'package:haversine_distance/haversine_distance.dart';

final startCoordinate = new Location(60.389739, 5.322323);
final endCoordinate = new Location(60.393032, 5.327248);

final haversineDistance = HaversineDistance();

main() {
  final distanceInMeter =
      haversineDistance.haversine(startCoordinate, endCoordinate, Unit.METER);

  print('Distance between start and end coordinate is: ${distanceInMeter} m.');

  final distanceInKm =
      haversineDistance.haversine(startCoordinate, endCoordinate, Unit.KM);

  print('Distance between start and end coordinate is: ${distanceInKm} km.');

  final bearingInDegrees =
      haversineDistance.bearing(startCoordinate, endCoordinate);

  print('Bearing from start to end coordinate is $bearingInDegrees');
}
