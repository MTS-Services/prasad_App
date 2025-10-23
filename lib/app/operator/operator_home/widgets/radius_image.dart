import 'package:flutter/material.dart';

class RadiusImage extends StatelessWidget {
  const RadiusImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(4),
      child: Image.network(imageUrl),
    );
  }
}
