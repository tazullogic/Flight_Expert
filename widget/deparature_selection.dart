import 'package:flight_expert/widget/view_airport_data.dart';
import 'package:flutter/material.dart';

class DepartureSelection extends StatelessWidget {
  void viewDepAirport(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (bCtx) {
          return ViewAirportData();
        });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => viewDepAirport(context),
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
                'From',
                style: TextStyle(
                  color: Color.fromRGBO(108, 117, 125, 1),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Chittagong',
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
                'Shah Amanat International',
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
