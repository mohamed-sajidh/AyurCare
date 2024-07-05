import 'package:flutter/foundation.dart';

class AppoinmentChangeNotifier with ChangeNotifier {
  int _maleCount = 0;
  int _femaleCount = 0;

  int get maleCount => _maleCount;
  int get femaleCount => _femaleCount;

  void maleIncrement() {
    _maleCount++;
    notifyListeners();
  }

  void maleDecrement() {
    _maleCount--;
    notifyListeners();
  }

  void femeleIncrement() {
    _femaleCount++;
    notifyListeners();
  }

  void femaleDecrement() {
    _femaleCount--;
    notifyListeners();
  }
}
