import 'package:flutter/material.dart';

class NumberOfTravelers extends StatefulWidget {
  @override
  _NumberOfTravelersState createState() => _NumberOfTravelersState();
}

class _NumberOfTravelersState extends State<NumberOfTravelers> {
  int adults = 1;

  int childs = 0;

  int infants = 0;
  int totalPassenger = 0;

  String bookingClass;

  void addAdults() {
    setState(() {
      adults = adults + 1;
    });
  }

  void removeAdults() {
    setState(() {
      adults = adults - 1;
    });
  }

  void addChilds() {
    setState(() {
      childs = childs + 1;
    });
  }

  void removeChilds() {
    setState(() {
      childs = childs - 1;
    });
  }

  void addInfant() {
    setState(() {
      infants = infants + 1;
    });
  }

  void removeInfant() {
    setState(() {
      infants = infants - 1;
    });
  }

  void doneButton() {
    totalPassenger = adults + childs + infants;
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Card(
        margin: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text('Travelers'),
            ),
            //Adults passenger details starts
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Adults',
                    ),
                    Text('12 years+'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.remove), onPressed: removeAdults),
                    Text(adults.toString()),
                    IconButton(icon: Icon(Icons.add), onPressed: addAdults),
                  ],
                )
              ],
            ),
            // Adults passengers details ends

            //Children passenger details starts
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Children',
                    ),
                    Text('2-12 years'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.remove), onPressed: removeChilds),
                    Text(
                      childs.toString(),
                    ),
                    IconButton(icon: Icon(Icons.add), onPressed: addChilds),
                  ],
                )
              ],
            ),
            // Children passengers details ends

            //Infant passenger details starts
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Infant',
                    ),
                    Text('below 2 years'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.remove), onPressed: removeInfant),
                    Text(
                      infants.toString(),
                    ),
                    IconButton(icon: Icon(Icons.add), onPressed: addInfant),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: RaisedButton(
                    color: Colors.redAccent,
                    onPressed: doneButton,
                    child: Text(
                      'Done',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Infant passengers details ends
          ],
        ),
      ),
    );
  }
}
