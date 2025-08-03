import 'package:flutter/material.dart';
import 'package:my_bmi/models/color_model.dart';

class GenderBox extends StatelessWidget {
  const GenderBox({
    super.key,
    required this.icon,
    required this.gander,
    required this.backgroundColor,
    required this.onTap,
  });
  final ColorModel colorModel = const ColorModel();
  final Color backgroundColor;
  final IconData icon;
  final String gander;
  final bool isMale = true;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: backgroundColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 130, color: colorModel.whiteColor),
                Text(
                  gander,
                  style: TextStyle(fontSize: 15, color: colorModel.whiteColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
