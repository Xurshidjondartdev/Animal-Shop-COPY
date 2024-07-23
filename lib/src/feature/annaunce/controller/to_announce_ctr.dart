import "package:flutter/cupertino.dart";

class ToAnnounceController extends ChangeNotifier {
  String type = "Animals";
  void chnageAnnounceType(String value) {
    type = value;
    notifyListeners();
  }
}
