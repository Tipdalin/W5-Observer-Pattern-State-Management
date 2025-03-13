import '../ride_pref/ride_pref.dart';
import '../../observers/ride_pref_listener.dart'; // Ensure this path is correct and the file exists

class RidePrefService {
  final List<RidePreferencesListener> _listeners = [];
  RidePreference? _currentPref;

  //Add a listener
  void addListener(RidePreferencesListener listener) {
    _listeners.add(listener);
  }

  //Remove a listener
  void removeListener(RidePreferencesListener listener) {
    _listeners.remove(listener);
  }

  // Notify all listener when preference change
  void notifyListeners() {
    if (_currentPref == null) return;

    for (var listener in _listeners) {
      listener.onPreferenceSelected(_currentPref!);
    }
  }

  //Update pref and notify listeners
  void setPref(RidePreference newPref) {
    _currentPref = newPref;
    notifyListeners();
  }
}

