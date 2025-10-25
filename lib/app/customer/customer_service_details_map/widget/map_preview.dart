import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' show LatLng;
import 'package:prasad/app/data/app_colors.dart';

class MapPreview extends StatelessWidget {
  final double latitude;
  final double longitude;
  final double zoom;
  final double? height;
  final double? width;
  final bool showZoomButtons;
  final String tileUrl; // Added parameter for TileLayer

  const MapPreview({
    super.key,
    required this.latitude,
    required this.longitude,
    this.zoom = 13.0,
    this.height,
    this.width,
    this.showZoomButtons = true,
    this.tileUrl = 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
  });

  @override
  Widget build(BuildContext context) {
    final mapController = MapController();

    return Container(
      height: height ?? 160,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          FlutterMap(
            mapController: mapController,
            options: MapOptions(
              initialCenter: LatLng(latitude, longitude),
              initialZoom: zoom,
              interactionOptions: const InteractionOptions(
                flags: InteractiveFlag.all,
              ),
            ),
            children: [
              TileLayer(
                urlTemplate: tileUrl,
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 40,
                    height: 40,
                    point: LatLng(latitude, longitude),
                    child: const Icon(Icons.location_pin, color: Colors.red, size: 30),
                  ),
                ],
              ),
            ],
          ),

          if (showZoomButtons)
            Positioned(
              right: 8,
              bottom: 8,
              child: Column(
                children: [
                  FloatingActionButton(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    heroTag: "zoomIn",
                    mini: true,
                    onPressed: () {
                      mapController.move(mapController.camera.center, mapController.camera.zoom + 1);
                    },
                    child: const Icon(Icons.add , ),
                  ),
                  const SizedBox(height: 6),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    heroTag: "zoomOut",
                    mini: true,
                    onPressed: () {
                      mapController.move(mapController.camera.center, mapController.camera.zoom - 1);
                    },
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
