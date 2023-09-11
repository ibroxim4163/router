import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int count = 0;

  void incremenet() {
    count = count + 1;
    notifyListeners();
  }

  void decrement() {
    count = count - 1;
    notifyListeners();
  }
}
