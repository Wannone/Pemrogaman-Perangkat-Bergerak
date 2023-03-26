import 'package:flutter/foundation.dart';
import 'package:state_management/model/country.dart';
import 'package:state_management/with_state/done_country_list.dart';

class DoneCountryProvider extends ChangeNotifier {
  final List<Country> _doneCountryPlaceList = [];

  List<Country> get doneCountryList => _doneCountryPlaceList;

  void complete(Country place, bool isDone) {
    isDone
        ? _doneCountryPlaceList.add(place)
        : _doneCountryPlaceList.remove(place);
    notifyListeners();
  }
}
