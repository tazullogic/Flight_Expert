import 'package:flight_expert/widget/arrival_selection.dart';
import 'package:flight_expert/widget/deparature_selection.dart';
import 'package:flight_expert/widget/number_of_travelers.dart';
import 'package:flight_expert/widget/travel_date_picker.dart';
import 'package:flutter/material.dart';

class FlightOptionScreen extends StatelessWidget {
  void startAddingTravelersInfo(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (context) {
        return NumberOfTravelers();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DepartureSelection(),
        ArrivalSelection(),
        TravelDatePicker(),

        //start adding number of passenger details

        InkWell(
          onTap: () => startAddingTravelersInfo(context),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Travelers and Booking class',
                ),
                Text(
                  '1 Traveler',
                ),
                Text(
                  'Economy',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
