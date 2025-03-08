import 'package:flutter/material.dart';

class NavHelper {
  static goTo(context, Widget newScreen) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => newScreen));
}
