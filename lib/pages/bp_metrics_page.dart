import 'package:async_redux/async_redux.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/router/routes.dart';
import 'package:tunza_presha/state/app_state.dart';
import 'package:tunza_presha/state/bp_reading.dart';
import 'package:tunza_presha/state/view_models/bp_readings_view_model.dart';

class BPMetricsPage extends StatelessWidget {
  const BPMetricsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Pressure Chart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
        body: StoreConnector<AppState, UserReadingsViewModel>(
            converter: (Store<AppState> store) =>
                UserReadingsViewModel.fromStore(store),
            builder: (BuildContext context,
                UserReadingsViewModel userReadingsViewModel) {
              if (userReadingsViewModel.userReadings?.isEmpty ?? true) {
                // return const Text("No Readings Found");
              }
              return BloodPressureChart(
                bpReadings: userReadingsViewModel.userReadings?.map((reading) {
                      return BPReading(
                        systole: reading?.systole ?? "",
                        diastole: reading?.diastole ?? "",
                        // date: reading?.date ?? "",
                      );
                    }).toList() ??
                    [],
              );
            }),
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
            bottomTitles: SideTitles(
              showTitles: true,
              reservedSize: 22,
              getTextStyles: (context, value) =>
                  const TextStyle(color: Colors.black, fontSize: 10),
              getTitles: (value) {
                return bpReadings[value.toInt()].date ?? '';
              },
            ),
            leftTitles: SideTitles(
              showTitles: true,
              getTextStyles: (context, value) =>
                  const TextStyle(color: Colors.black, fontSize: 10),
              getTitles: (value) {
                if (value.toInt() % 20 == 0) {
                  return value.toInt().toString();
                }
                return '';
              },
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
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
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
              colors: [Colors.red],
              barWidth: 4,
              belowBarData: BarAreaData(
                show: true,
                colors: [Colors.red.withOpacity(0.3)],
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
              colors: [Colors.blue],
              barWidth: 4,
              belowBarData: BarAreaData(
                show: true,
                colors: [Colors.blue.withOpacity(0.3)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
