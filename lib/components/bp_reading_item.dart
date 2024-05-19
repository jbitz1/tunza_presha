import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tunza_presha/utils.dart';

class BPReadingItem extends StatelessWidget {
  const BPReadingItem({
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
        color: vitalColor.withOpacity(.3),
      ),
      padding: const EdgeInsets.all(15),
      margin: EdgeInsets.all(showMargin ? 10 : 0),
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
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: vitalColor,
                ),
              ),
              Text(
                status,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: vitalColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            dateRecorded,
            style: const TextStyle(
              fontSize: 10,
              color: Color.fromARGB(255, 91, 90, 90),
            ),
          ),
          const SizedBox(height: 10),
          if (description.isNotEmpty)
            Text(
              description,
              style: TextStyle(
                fontSize: 10,
                color: vitalColor,
              ),
            )
        ],
      ),
    );
  }
}
