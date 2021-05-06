import 'package:flutter/cupertino.dart';

class Tema extends ChangeNotifier {
  static Tema intance = Tema();
  bool isThemeDark = false;
  chargeTheme() {
    isThemeDark = !isThemeDark;
    notifyListeners();
  }
}
