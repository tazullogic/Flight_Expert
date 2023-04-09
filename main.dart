import 'package:flight_expert/widget/flight_option_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FlightExpert());
}

class FlightExpert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flight Expert',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flight Expert'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('What to book?  Flight / Hotel / Visa'),
            Text('Flight Type Oneway, Roundtrip, Multicity'),
            FlightOptionScreen(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {},
              child: Text(
                'Search',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
