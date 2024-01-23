import 'package:flutter/material.dart';

class NavigationUtils {
  static void goToPage(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  static void goToBack(BuildContext context) {
    Navigator.pop(context);
  }
}
