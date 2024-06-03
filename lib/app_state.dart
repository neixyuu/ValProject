import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  double _distanceAppState = 0.0;
  double get distanceAppState => _distanceAppState;
  set distanceAppState(double _value) {
    _distanceAppState = _value;
  }

  LatLng? _place1;
  LatLng? get place1 => _place1;
  set place1(LatLng? _value) {
    _place1 = _value;
  }

  LatLng? _place2;
  LatLng? get place2 => _place2;
  set place2(LatLng? _value) {
    _place2 = _value;
  }

  List<SitesDatatypeStruct> _siteAppstate = [];
  List<SitesDatatypeStruct> get siteAppstate => _siteAppstate;
  set siteAppstate(List<SitesDatatypeStruct> _value) {
    _siteAppstate = _value;
  }

  void addToSiteAppstate(SitesDatatypeStruct _value) {
    _siteAppstate.add(_value);
  }

  void removeFromSiteAppstate(SitesDatatypeStruct _value) {
    _siteAppstate.remove(_value);
  }

  void removeAtIndexFromSiteAppstate(int _index) {
    _siteAppstate.removeAt(_index);
  }

  void updateSiteAppstateAtIndex(
    int _index,
    SitesDatatypeStruct Function(SitesDatatypeStruct) updateFn,
  ) {
    _siteAppstate[_index] = updateFn(_siteAppstate[_index]);
  }

  void insertAtIndexInSiteAppstate(int _index, SitesDatatypeStruct _value) {
    _siteAppstate.insert(_index, _value);
  }
}
