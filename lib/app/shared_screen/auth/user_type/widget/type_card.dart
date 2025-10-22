import 'package:flutter/material.dart';
import 'package:prasad/app/data/app_colors.dart';

class TypeCard extends StatelessWidget {
  final String title;
  final String image;
  final bool isSelected;
  final VoidCallback? onTap;

  const TypeCard({
    super.key,
    required this.title,
    required this.image,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 170,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? AppColors.primaryColor : Colors.transparent,
            width: 2,
          ),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container()
      ),
    );
  }
}
