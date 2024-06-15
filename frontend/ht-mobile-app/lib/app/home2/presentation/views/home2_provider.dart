import 'package:flutter/material.dart';

class Home2Provider with ChangeNotifier {
  int _selectedPage = 0;

  int get selectedPage => _selectedPage;

  set selectedPage(value) {
    _selectedPage = value;
    notifyListeners();
  }
}
