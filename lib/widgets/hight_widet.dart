import 'package:flutter/material.dart';
import 'package:my_bmi/models/color_model.dart';

class HightWidet extends StatefulWidget {
  const HightWidet({super.key, required this.hight, required this.onChanged});
  final double hight;
  final ValueChanged<double> onChanged;

  @override
  State<HightWidet> createState() => _HightWidetState();
}

class _HightWidetState extends State<HightWidet> {
  final ColorModel colorModel = const ColorModel();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: colorModel.cardColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text("Hight", style: TextStyle(color: colorModel.whiteColor)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "${widget.hight.toInt()}",
                    style: TextStyle(
                      color: colorModel.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "cm",
                    style: TextStyle(
                      color: colorModel.whiteColor,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Slider(
                value: widget.hight,
                onChanged: (value) {
                  widget.onChanged(value);
                },
                min: 100,
                max: 220,
                activeColor: colorModel.pinkColor,
                inactiveColor: colorModel.grayColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
