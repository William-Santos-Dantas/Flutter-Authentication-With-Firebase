import './pages/homeScreen/homeScreen.dart';

import './pages/register/register.dart';

import './pages/login/login.dart';
import 'package:flutter/material.dart';

// Pages

class Routes {
  static final routes = <String, WidgetBuilder>{
    '/login': (context) => LoginPage(),
    '/register': (context) => RegisterPage(),
    '/homeScreen': (context) => HomeScreen()
  };
}
