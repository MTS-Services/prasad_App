import 'package:flutter/material.dart';

class ReusableImageCard extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  final double borderRadius;
  final BoxFit fit;
  final bool isNetworkImage;

  const ReusableImageCard({
    super.key,
    required this.imagePath,
    this.height = 150,
    this.width = double.infinity,
    this.borderRadius = 16,
    this.fit = BoxFit.cover,
    this.isNetworkImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: isNetworkImage
          ? Image.network(imagePath, fit: fit)
          : Image.asset(imagePath, fit: fit),
    );
  }
}
