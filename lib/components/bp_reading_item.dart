import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/utils.dart';

class BPReadingItem extends StatelessWidget {
  const BPReadingItem({
    super.key,
    required this.reading,
    required this.dateRecorded,
    required this.status,
    this.description = '',
  });

  final String reading;
  final String dateRecorded;
  final String status;
  final String description;

  @override
  Widget build(BuildContext context) {
    final Color vitalColor = getVitalColor(status);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: vitalColor.withOpacity(.1),
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                reading,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: vitalColor,
                ),
              ),
              Text(
                status,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: vitalColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          humanizeDate(loadedDate: dateRecorded, showTime: true),
          // Text(
          //   dateRecorded,
          //   style: TextStyle(fontSize: 14, color: greyColor.withOpacity(.4)),
          // ),
          const SizedBox(height: 10),
          if (description.isNotEmpty)
            Text(
              description,
              style: const TextStyle(fontSize: 12, color: greyColor),
            )
        ],
      ),
    );
  }
}
