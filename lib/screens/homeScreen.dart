import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_bmi/models/color_model.dart';
import 'package:my_bmi/screens/result_screen.dart';
import 'package:my_bmi/widgets/age_widget.dart';
import 'package:my_bmi/widgets/genderBox_widget.dart';
import 'package:my_bmi/widgets/hight_widet.dart';
import 'package:my_bmi/widgets/weight_widget.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  bool isMale = true;
  double hight = 170;
  double weight = 70;
  double age = 20;

  final ColorModel colorModel = const ColorModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorModel.bachgraoundColor,
      appBar: AppBar(
        title: Text(
          "Am I Fit?",
          style: TextStyle(
            fontSize: 30,
            color: colorModel.whiteColor,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: colorModel.bachgraoundColor,
        shadowColor: colorModel.cardColor,
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 5),
            Expanded(
              child: Row(
                children: [
                  GenderBox(
                    backgroundColor: isMale
                        ? colorModel.pinkColor
                        : colorModel.cardColor,
                    icon: Icons.male,
                    gander: "Male",
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                  ),
                  GenderBox(
                    backgroundColor: !isMale
                        ? colorModel.pinkColor
                        : colorModel.cardColor,
                    icon: Icons.female,
                    gander: "Female",
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                  ),
                ],
              ),
            ),
            HightWidet(
              hight: hight,
              onChanged: (value) {
                setState(() {
                  hight = value;
                });
              },
            ),
            Expanded(
              child: Row(
                children: [
                  WeightWidget(
                    weight: weight,
                    onChanged: (value) {
                      setState(() {
                        weight = value;
                      });
                    },
                  ),

                  AgeWidget(
                    age: age,
                    onChanged: (value) {
                      setState(() {
                        age = value;
                      });
                    },
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorModel.pinkColor,
                    shadowColor: colorModel.cardColor,
                    elevation: 20,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          double bmi = weight / pow(hight / 100, 2);
                          return ResultScreen(bmi: bmi);
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      color: colorModel.whiteColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}
