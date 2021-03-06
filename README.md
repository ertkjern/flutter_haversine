

[![pub package](https://img.shields.io/pub/v/haversine_distance.svg)](https://pub.dev/packages/haversine_distance)


# Haversine_Distance

A simple flutter package to calculate the distance between two coordinates

## Getting Started

The following project is a simple Dart package to calculate the distance between two points in latitude and longitude.

```dart
/// Import the package
import 'package:haversine_distance/haversine_distance.dart';

/// Create the two location objects you want to calculate the distance between.
/// The Location object is included in the package. 
final startCoordinate = new Location(60.389739, 5.322323);
final endCoordinate = new Location(60.393032, 5.327248);

/// Create a new haversine object
final haversineDistance = HaversineDistance();

/// Then calculate the distance between the two location objects and set a unit.
/// You can select between KM/MILES/METERS/NMI
haversineDistance.haversine(startCoordinate, endCoordinate, Unit.KM).floor();
 ```

 ## API

 ### Units to calculate
 KM, Meters, Miles, NMI,

 ```Dart
enum Unit { KM, MILE, METER, NMI }
 ```

 ### Location Class: 

```Dart
Class Location(){
 String latitude;
 String longitude;
}
```





## Thanks

The following Dart package is highly inspired by the following npm project: https://www.npmjs.com/package/haversine