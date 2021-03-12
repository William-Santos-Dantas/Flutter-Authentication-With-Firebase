
import './pages/login/login.dart';
import 'package:flutter/material.dart';

// Pages

class Routes {
  static final routes = <String, WidgetBuilder>{
    '/': (context) => LoginPage(),
  };
}