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

  String getmessage(double bmi) {
    if (bmi < 18.5) {
      return "You are underweight. Try to eat more healthy food and take care of your body.";
    } else if (bmi < 25) {
      return "Great! Your weight is healthy. Keep it up!";
    } else if (bmi < 30) {
      return "You are a bit overweight. Try to move more and eat healthier!";
    } else {
      return "Your weight is high. It’s time to start caring more about your health.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorModel.bachgraoundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: colorModel.whiteColor),
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
                        fontSize: 25,
                        color: colorModel.greenResultColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmi.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 70,
                        color: colorModel.whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        getmessage(bmi),
                        style: TextStyle(
                          fontSize: 20,
                          color: colorModel.whiteColor,
                        ),
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
                onPressed: () {
                  Navigator.pop(context);
                },
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
