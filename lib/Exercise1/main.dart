import 'model/services/ride_pref_service.dart';
import 'observers/consoleLogger.dart';
import 'model/ride/locations.dart';
import 'model/ride_pref/ride_pref.dart';


void main() {
  final service = RidePrefService();
  final logger = ConsoleLogger();

  // Add the logger as a listener
  service.addListener(logger);

  // Create sample locations
  Location departure = Location(name: "New York", country: Country.france);
  Location arrival = Location(name: "Los Angeles", country: Country.france);

  // Create a ride preference
  RidePreference preference = RidePreference(
    departure: departure,
    departureDate: DateTime.now(),
    arrival: arrival,
    requestedSeats: 2,
  );

  // Set the new preference (this should trigger the observer)
  service.setPref(preference);
}
