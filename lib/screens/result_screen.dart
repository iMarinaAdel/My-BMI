import 'package:flutter/material.dart';
import 'package:my_bmi/main.dart';
import 'package:my_bmi/models/color_model.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bmi});
  final double bmi;
  final ColorModel colorModel = const ColorModel();
  String getResultCategory(double bmi) {
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi < 25) {
      return "Normal";
    } else if (bmi < 30) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorModel.bachgraoundColor,
      appBar: AppBar(
        shadowColor: colorModel.cardColor,
        elevation: 10,
        backgroundColor: colorModel.bachgraoundColor,
        title: Text(
          "Your Result",
          style: TextStyle(
            color: colorModel.whiteColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                decoration: BoxDecoration(
                  color: colorModel.cardColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 70,
                  children: [
                    Text(
                      getResultCategory(bmi),
                      style: TextStyle(
                        fontSize: 20,
                        color: colorModel.greenResultColor,
                      ),
                    ),
                    Text(
                      bmi.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 40,
                        color: colorModel.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorModel.pinkColor,
                ),
                onPressed: () {},
                child: Text(
                  "Recaculate",
                  style: TextStyle(
                    color: colorModel.whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
