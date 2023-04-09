import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TravelDatePicker extends StatefulWidget {
  @override
  _TravelDatePickerState createState() => _TravelDatePickerState();
}

class _TravelDatePickerState extends State<TravelDatePicker> {
  DateTime depDate;

  DateTime arrDate;

  Future<void> depDateSelection(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022, 1),
      lastDate: DateTime(2030, 12),
    );
    if (picked != null && picked != depDate) {
      setState(() {
        depDate = picked;
      });
    }
  }

  Future<void> arrDateSelection(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022, 1),
      lastDate: DateTime(2030, 12),
    );
    if (picked != null && picked != arrDate) {
      setState(() {
        arrDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () => depDateSelection(context),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Departure'),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    depDate == null
                        ? 'Select Date'
                        : DateFormat.yMMMd().format(depDate),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    arrDate == null
                        ? 'Chose a Day'
                        : DateFormat('EEEE').format(depDate),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => arrDateSelection(context),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Arrival'),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    arrDate == null
                        ? 'Select Date'
                        : DateFormat.yMMMd().format(arrDate),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    arrDate == null
                        ? 'Chose a Day'
                        : DateFormat('EEEE').format(arrDate),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
