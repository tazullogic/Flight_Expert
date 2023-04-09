class FlightData {
  final String id;
  final String departureLocation;
  final String arrivalLocation;
  final DateTime depDate;
  final DateTime arivalDate;
  final String bookingClass;
  final int totalTraveler;

  final int adults;
  final int childrens;
  final int infants;

  FlightData({
    this.id,
    this.departureLocation,
    this.arrivalLocation,
    this.depDate,
    this.arivalDate,
    this.adults = 1,
    this.childrens = 0,
    this.infants = 0,
    this.bookingClass = 'Economy',
    this.totalTraveler = 1,
  });
}
