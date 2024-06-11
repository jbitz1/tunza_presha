import 'package:async_redux/async_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunza_presha/components/bp_reading_item.dart';
import 'package:tunza_presha/components/buttons.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/constants/string_constants.dart';
import 'package:tunza_presha/router/routes.dart';
import 'package:tunza_presha/state/app_state.dart';
import 'package:tunza_presha/state/view_models/bp_readings_view_model.dart';
import 'package:tunza_presha/utils.dart';

class BPReadingPage extends StatelessWidget {
  const BPReadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.bpMetricsPage);
              },
              icon: const Icon(
                CupertinoIcons.chart_bar,
                color: primaryColor,
                size: 30,
              ))
        ],
        leading: BackButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.homePage);
          },
          color: primaryColor,
        ),
        title: const Center(
          child: Text(
            bpReadingsTitle,
            style: TextStyle(color: primaryColor),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: PrimaryButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.newReadingPage);
            },
            text: "Add Pressure Reading",
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: [
            const Center(child: Text(bpReadingsDescription)),
            // const SizedBox(height: 10),
            // const BPFiltersWidget(),
            const SizedBox(height: 10),
            StoreConnector<AppState, UserReadingsViewModel>(
              converter: (Store<AppState> store) =>
                  UserReadingsViewModel.fromStore(store),
              builder: (BuildContext context,
                  UserReadingsViewModel userReadingsViewModel) {
                if (userReadingsViewModel.userReadings?.isEmpty ?? true) {
                  return const Text('No Readings found');
                }
                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: userReadingsViewModel.userReadings?.length ?? 0,
                  itemBuilder: (context, i) {
                    final reading = userReadingsViewModel.userReadings?[i];

                    final String systole = reading?.systole ?? "";
                    final String diastole = reading?.diastole ?? "";
                    final String bp = "$systole/$diastole";
                    final String note = reading?.note ?? "";
                    final String date = reading?.date ?? "";
                    final String status = getStatus(reading!);

                    return BPReadingItem(
                      reading: bp,
                      dateRecorded: date,
                      status: status,
                      description: note,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
