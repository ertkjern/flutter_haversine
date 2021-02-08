import 'package:haversine/haversine_distance.dart';
import 'package:test/test.dart';

void main() {
  /// First coordinate test
  final startCoordinate = new Location(60.389739, 5.322323);
  final endCoordinate = new Location(60.393032, 5.327248);

  /// Second coordinate test
  final startCoordinate2 = new Location(60.382177, 5.334089);
  final endCoordinate2 = new Location(59.913040, 10.754140);

  test('Distance should be 455m', () {
    final haversineDistance = HaversineDistance();
    final distance = haversineDistance
        .haversine(startCoordinate, endCoordinate, Unit.METER)
        .floor();
    expect(distance, 455);
  });

  test('Distance should be 0.45m', () {
    final haversineDistance = HaversineDistance();
    final distance = haversineDistance
        .haversine(startCoordinate, endCoordinate, Unit.KM)
        .toStringAsFixed(2);
    expect(distance, '0.46');
  });

  test('Distance should be 455m', () {
    final haversineDistance = HaversineDistance();
    final distance = haversineDistance
        .haversine(startCoordinate, endCoordinate, Unit.METER)
        .floor();
    expect(distance, 455);
  });

  test('Bergen - Oslo in different formats', () {
    final haversineDistance = HaversineDistance();

    final distanceKm = haversineDistance
        .haversine(startCoordinate2, endCoordinate2, Unit.KM)
        .toStringAsFixed(2);

    final distanceMeter = haversineDistance
        .haversine(startCoordinate2, endCoordinate2, Unit.METER)
        .toStringAsFixed(2);

    final distanceNMI = haversineDistance
        .haversine(startCoordinate2, endCoordinate2, Unit.NMI)
        .toStringAsFixed(2);

    final distanceMile = haversineDistance
        .haversine(startCoordinate2, endCoordinate2, Unit.MILE)
        .toStringAsFixed(2);

    expect(distanceNMI, '164.36');

    expect(distanceMile, '189.21');

    expect(distanceMeter, '304405.91');

    expect(distanceKm, '304.41');
  });
}
