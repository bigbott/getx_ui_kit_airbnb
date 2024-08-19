import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_ui_kit_property/app/global_widgets/booking_details.dart';
import 'package:getx_ui_kit_property/app/global_widgets/booking_property_features.dart';
import 'package:getx_ui_kit_property/app/global_widgets/primary_button.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'booking_controller.dart';

class BookingScreen extends GetView<BookingController> {
  const BookingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.keyboard_backspace,
            color: Color.fromRGBO(33, 45, 82, 1),
          ),
        ),
        title: Text(
          "Select Dates",
          style: TextStyle(
            color: Color.fromRGBO(33, 45, 82, 1),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Container(
                height: 350.0,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: SfDateRangePicker(
                  selectionMode: DateRangePickerSelectionMode.range,
                  headerStyle: DateRangePickerHeaderStyle(
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              BookingDetails(),
              BookingPropertyFeatures(),
              SizedBox(
                height: 10.0,
              ),
              PrimaryButton(
                text: "BOOK ROOM",
                onPressed: () {},
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
