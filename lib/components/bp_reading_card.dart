import 'package:flutter/material.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/utils.dart';

class BPReadingCard extends StatelessWidget {
  const BPReadingCard({
    super.key,
    required this.reading,
    required this.dateRecorded,
    required this.status,
    this.showMargin = true,
    this.description = '',
  });

  final String reading;
  final String dateRecorded;
  final String status;
  final bool showMargin;
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
      margin: EdgeInsets.all(showMargin ? 10 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                reading,
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: vitalColor,
                ),
              ),
              const SizedBox(width: 5),
              Column(
                children: <Widget>[
                  Text(
                    status,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: vitalColor,
                    ),
                  ),
                  const SizedBox(height: 12)
                ],
              ),
            ],
          ),
          const SizedBox(height: 5),
          humanizeDate(
              loadedDate: dateRecorded, showMonthDate: true, showTime: true),
        ],
      ),
    );
  }
}
