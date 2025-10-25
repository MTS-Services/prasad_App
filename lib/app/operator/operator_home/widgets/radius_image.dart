import 'package:flutter/material.dart';

class RadiusImage extends StatelessWidget {
  const RadiusImage({
    super.key,
    required this.imageUrl,
    required this.hasHight,
    this.height,
  });

  final String imageUrl;
  final bool hasHight;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(4),
      child: Image.network(imageUrl, height: hasHight ? height : null),
    );
  }
}
