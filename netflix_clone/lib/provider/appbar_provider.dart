import 'package:flutter/material.dart';

class AppBarProvider extends ChangeNotifier {
  double _scrollOffset = 0.0;

  double get scrollOffset => _scrollOffset;

  void scroll(double offset) {
    _scrollOffset = offset;
    notifyListeners();
  }
}
