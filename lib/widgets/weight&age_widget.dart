import 'package:flutter/material.dart';
import 'package:my_bmi/models/color_model.dart';
import 'package:my_bmi/widgets/item_widget.dart';

class WeightAgewidget extends StatefulWidget {
  const WeightAgewidget({super.key});

  @override
  State<WeightAgewidget> createState() => _WeightAgewidgetState();
}

class _WeightAgewidgetState extends State<WeightAgewidget> {
  final ColorModel colorModel = const ColorModel();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ItemWidget(text: "Weight"),
          ItemWidget(text: "Age"),
        ],
      ),
    );
  }
}
