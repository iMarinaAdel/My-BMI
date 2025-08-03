import 'package:flutter/material.dart';
import 'package:my_bmi/models/color_model.dart';

class WeightWidget extends StatefulWidget {
  WeightWidget({super.key, required this.weight, required this.onChanged});
  double weight;
  final ValueChanged<double> onChanged;
  @override
  State<WeightWidget> createState() => _AgeWidgetState();
}

class _AgeWidgetState extends State<WeightWidget> {
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
              Text("Weight", style: TextStyle(color: colorModel.whiteColor)),
              Text(
                "${widget.weight.toInt()}", //
                style: TextStyle(
                  color: colorModel.whiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.weight++;
                      });
                      widget.onChanged(widget.weight);
                    },

                    icon: Icon(Icons.add),
                    iconSize: 40,
                    style: IconButton.styleFrom(
                      backgroundColor: colorModel.grayColor,
                      foregroundColor: colorModel.whiteColor,
                    ),
                  ),
                  const SizedBox(width: 15),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.weight--;
                      });
                      widget.onChanged(widget.weight);
                    },

                    icon: Icon(Icons.remove),
                    iconSize: 40,
                    style: IconButton.styleFrom(
                      backgroundColor: colorModel.grayColor,
                      foregroundColor: colorModel.whiteColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
