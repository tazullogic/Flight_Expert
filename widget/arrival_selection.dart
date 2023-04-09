import 'package:flight_expert/widget/view_airport_data.dart';
import 'package:flutter/material.dart';

class ArrivalSelection extends StatelessWidget {
  void viewArrivalAirport(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (bCtx) {
          return ViewAirportData();
        });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => viewArrivalAirport(context),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
        ),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'To',
                style: TextStyle(
                  color: Color.fromRGBO(108, 117, 125, 1),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Dhaka',
                style: TextStyle(
                  color: Color.fromRGBO(108, 117, 125, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Hazrat Airport',
                style: TextStyle(
                  color: Color.fromRGBO(108, 117, 125, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
