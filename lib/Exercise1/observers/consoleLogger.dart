import 'ride_pref_listener.dart';
import '../model/ride_pref/ride_pref.dart';

class ConsoleLogger extends RidePreferencesListener {
  @override
  void onPreferenceSelected(RidePreference selectedPreference) {
    print("Preference changed to: $selectedPreference");
  }
}
