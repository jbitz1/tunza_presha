import 'package:flutter/material.dart';
import 'package:tunza_presha/constants/color_constants.dart';

class ReminderCard extends StatelessWidget {
  const ReminderCard({
    super.key,
    required this.title,
    required this.description,
    required this.dueAt,
  });

  final String title;
  final String description;
  final String dueAt;

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
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: primaryColor,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(fontSize: 14, color: greyColor),
          ),
          const SizedBox(height: 10),
          Text(
            dueAt,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
