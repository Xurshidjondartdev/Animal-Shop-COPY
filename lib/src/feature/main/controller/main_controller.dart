import "package:flutter/material.dart";

class MainController extends ChangeNotifier {
  PageController pageController = PageController();

  int pageNumber = 0;

  void changePageNumber(int value) {
    pageNumber = value;
    notifyListeners();
  }
}
