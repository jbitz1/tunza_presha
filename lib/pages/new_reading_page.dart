import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tunza_presha/components/bp_reading_item.dart';
import 'package:tunza_presha/components/buttons.dart';
import 'package:tunza_presha/components/custom_text_field.dart';
import 'package:tunza_presha/router/routes.dart';
import 'package:tunza_presha/state/actions/update_current_reading_action.dart';
import 'package:tunza_presha/state/app_state.dart';
import 'package:tunza_presha/state/bp_reading.dart';
import 'package:tunza_presha/state/view_models/bp_readings_view_model.dart';
import 'package:tunza_presha/utils.dart';

class NewReadingPage extends StatelessWidget {
  const NewReadingPage({super.key});

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Color.fromRGBO(117, 68, 191, 1),
        ),
        title: const Center(
          child: Text(
            "Add Reading",
            style: TextStyle(
              color: Color.fromRGBO(117, 68, 191, 1),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Enter your blood pressure reading details below\n",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomTextField(
                inputType: TextInputType.number,
                hintText: 'Enter systolic value',
                labelText: "Systole",
                onChanged: (value) {
                  context.dispatch(UpdateCurrentReadingAction(systole: value));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomTextField(
                inputType: TextInputType.number,
                hintText: 'Enter diastolic value',
                labelText: "Diastole",
                onChanged: (value) {
                  context.dispatch(UpdateCurrentReadingAction(diastole: value));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomTextField(
                inputType: TextInputType.number,
                hintText: 'Enter pulse value',
                labelText: "Pulse",
                onChanged: (value) {
                  context.dispatch(UpdateCurrentReadingAction(pulse: value));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomTextField(
                inputType: TextInputType.text,
                hintText: 'Describe your reading',
                labelText: "Notes",
                onChanged: (value) {
                  context.dispatch(UpdateCurrentReadingAction(note: value));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                child: PrimaryButton(
                  onPressed: () {
                    context.dispatch(SaveCurrentReadingAction());
                    Navigator.pushNamed(context, AppRoutes.bpReadingPage);
                  },
                  text: 'Save Reading',
                ),
              ),
            ),
            StoreConnector<AppState, CurrentReadingsViewModel>(
              converter: (store) => CurrentReadingsViewModel.fromStore(store),
              onInit: (store) => store.dispatch(ResetCurrentReadingAction()),
              builder: (BuildContext context,
                  CurrentReadingsViewModel currentReadingsViewModel) {
                if (currentReadingsViewModel.currentReading ==
                    BPReading.initial()) {
                  return const SizedBox();
                }
                final String systole =
                    currentReadingsViewModel.currentReading?.systole ?? "";
                final String diastole =
                    currentReadingsViewModel.currentReading?.diastole ?? "";
                final String reading = "$systole/$diastole";
                final String note =
                    currentReadingsViewModel.currentReading?.note ?? "";
                final String date =
                    currentReadingsViewModel.currentReading?.date ?? "";
                final String status =
                    getStatus(currentReadingsViewModel.currentReading!);
                // final Color color = getVitalColor(status);

                return BPReadingItem(
                  reading: reading,
                  dateRecorded: date,
                  status: status,
                  description: note,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  
}
