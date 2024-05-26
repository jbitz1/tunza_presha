import 'package:flutter/material.dart';
import 'package:tunza_presha/components/buttons.dart';
import 'package:tunza_presha/constants/color_constants.dart';

class AddReadingNudge extends StatelessWidget {
  const AddReadingNudge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(.1),
            blurRadius: 10,
            spreadRadius: 0,
          )
        ],
      ),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Stay on top of your health",
            style: TextStyle(
                fontSize: 20, color: primaryColor, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            "Record your blood pressure reading",
            style: TextStyle(fontSize: 14, color: greyColor),
          ),
          const SizedBox(height: 15),
          SecondaryButton(
            text: "Add New Reading",
            onPressed: () async {},
          ),
        ],
      ),
    );
  }
}
