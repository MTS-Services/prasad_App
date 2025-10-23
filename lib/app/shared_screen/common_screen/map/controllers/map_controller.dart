import 'package:get/get.dart';
import 'package:flutter_map/flutter_map.dart';

class MapViewController extends GetxController {
  final mapController = MapController(); // ✅ this comes from flutter_map

  void zoomIn() {
    final zoom = mapController.camera.zoom + 1;
    mapController.move(mapController.camera.center, zoom);
  }

  void zoomOut() {
    final zoom = mapController.camera.zoom - 1;
    mapController.move(mapController.camera.center, zoom);
  }
}
