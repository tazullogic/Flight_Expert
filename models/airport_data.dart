import 'package:flutter/material.dart';

class Airport {
  final String name;
  final String code;
  final String city;
  final String country;

  Airport({
    @required this.name,
    @required this.code,
    @required this.city,
    @required this.country,
  });
}

final List<Airport> airports = [
  Airport(
      name: 'John F. Kennedy International Airport',
      code: 'JFK',
      city: 'New York',
      country: 'United States'),
  Airport(
      name: 'Los Angeles International Airport',
      code: 'LAX',
      city: 'Los Angeles',
      country: 'United States'),
  Airport(
      name: 'Heathrow Airport',
      code: 'LHR',
      city: 'London',
      country: 'United Kingdom'),
  Airport(
      name: 'Charles de Gaulle Airport',
      code: 'CDG',
      city: 'Paris',
      country: 'France'),
  Airport(
      name: 'Dubai International Airport',
      code: 'DXB',
      city: 'Dubai',
      country: 'United Arab Emirates'),
  Airport(
      name: 'Narita International Airport',
      code: 'NRT',
      city: 'Tokyo',
      country: 'Japan'),
  Airport(
      name: 'Sydney Airport',
      code: 'SYD',
      city: 'Sydney',
      country: 'Australia'),
  Airport(
      name: 'Changi Airport',
      code: 'SIN',
      city: 'Singapore',
      country: 'Singapore'),
  Airport(
      name: 'Incheon International Airport',
      code: 'ICN',
      city: 'Seoul',
      country: 'South Korea'),
  Airport(
      name: 'Beijing Capital International Airport',
      code: 'PEK',
      city: 'Beijing',
      country: 'China'),
];
