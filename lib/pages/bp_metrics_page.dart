import 'package:async_redux/async_redux.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/constants/string_constants.dart';
import 'package:tunza_presha/router/routes.dart';
import 'package:tunza_presha/state/app_state.dart';
import 'package:tunza_presha/state/bp_reading.dart';
import 'package:tunza_presha/state/view_models/bp_readings_view_model.dart';
import 'package:intl/intl.dart';

class BPMetricsPage extends StatelessWidget {
  const BPMetricsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Pressure Chart',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.homePage);
            },
            color: primaryColor,
          ),
          title: const Text('Blood Pressure Chart'),
        ),
        body: Column(
          children: [
            const Center(child: Text(metricsDescription)),
            StoreConnector<AppState, UserReadingsViewModel>(
                converter: (Store<AppState> store) =>
                    UserReadingsViewModel.fromStore(store),
                builder: (BuildContext context,
                    UserReadingsViewModel userReadingsViewModel) {
                  if (userReadingsViewModel.userReadings?.isEmpty ?? true) {
                    return const Center(child: Text("No Readings Found"));
                  }
                  return SizedBox(
                    height: 400,
                    child: BloodPressureChart(
                      bpReadings:
                          userReadingsViewModel.userReadings?.map((reading) {
                                return BPReading(
                                  systole: reading?.systole ?? "",
                                  diastole: reading?.diastole ?? "",
                                  date: reading?.date ?? "",
                                );
                              }).toList() ??
                              [],
                    ),
                  );
                }),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LegendItem(
                    color: primaryColor, text: 'Systolic Blood Pressure'),
                SizedBox(width: 16.0),
                LegendItem(
                    color: Colors.green, text: 'Diastolic Blood Pressure'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BloodPressureChart extends StatelessWidget {
  final List<BPReading> bpReadings;

  const BloodPressureChart({super.key, required this.bpReadings});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 22,
                getTitlesWidget: (value, meta) {
                  final int index = value.toInt();
                  if (index < 0 || index >= bpReadings.length) {
                    return const Text('');
                  }
                  final String? dateStr = bpReadings[index].date;
                  String formattedDate = '';
                  if (dateStr != null && dateStr.isNotEmpty) {
                    try {
                      final DateTime date =
                          DateFormat('yyyy-MM-dd').parse(dateStr);
                      formattedDate = DateFormat('EEE')
                          .format(date); // Display day of the week
                    } catch (e) {
                      // Handle the parsing error if needed
                    }
                  }

                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(formattedDate,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 10)),
                  );
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  if (value.toInt() % 20 == 0) {
                    return Text(value.toInt().toString(),
                        style:
                            const TextStyle(color: Colors.black, fontSize: 10));
                  }
                  return const Text('');
                },
              ),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d), width: 1),
          ),
          gridData: FlGridData(
            show: true,
            drawVerticalLine: true,
            getDrawingHorizontalLine: (value) {
              return const FlLine(color: Color(0xff37434d), strokeWidth: .5);
            },
            getDrawingVerticalLine: (value) {
              return const FlLine(color: Color(0xff37434d), strokeWidth: .5);
            },
          ),
          lineBarsData: [
            LineChartBarData(
              spots: bpReadings
                  .asMap()
                  .entries
                  .map((e) =>
                      FlSpot(e.key.toDouble(), double.parse(e.value.systole!)))
                  .toList(),
              isCurved: true,
              color: primaryColor,
              barWidth: 4,
              belowBarData: BarAreaData(
                show: true,
                color: primaryColor.withOpacity(0.3),
              ),
            ),
            LineChartBarData(
              spots: bpReadings
                  .asMap()
                  .entries
                  .map((e) =>
                      FlSpot(e.key.toDouble(), double.parse(e.value.diastole!)))
                  .toList(),
              isCurved: true,
              color: greenColor,
              barWidth: 4,
              belowBarData: BarAreaData(
                show: true,
                color: greenColor.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String text;

  const LegendItem({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          color: color,
        ),
        const SizedBox(width: 8.0),
        Text(
          text,
          style: const TextStyle(fontSize: 14.0),
        ),
      ],
    );
  }
}
