import 'package:flutter/material.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/constants/string_constants.dart';

class BPFiltersWidget extends StatelessWidget {
  const BPFiltersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // This month
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextButton(
              style: ButtonStyle(
                fixedSize: const MaterialStatePropertyAll(Size(100, 20)),
                backgroundColor:
                    MaterialStatePropertyAll(primaryColor.withOpacity(.2)),
              ),
              onPressed: () {},
              child: const Text(
                thisMonthString,
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(117, 68, 191, 1),
                ),
              ),
            ),
          ),

          // Last month
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: TextButton(
              style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size(100, 20)),
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(50, 105, 116, 137))),
              onPressed: null,
              child: Text(
                lastMonthString,
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 91, 90, 90),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: TextButton(
              style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size(102, 20)),
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(50, 105, 116, 137))),
              onPressed: null,
              child: Text(
                lastThreeMonthsString,
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 91, 90, 90),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: TextButton(
              style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size(102, 20)),
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(50, 105, 116, 137))),
              onPressed: null,
              child: Text(
                lastSixMonthsString,
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 91, 90, 90),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
