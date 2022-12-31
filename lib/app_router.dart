import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mps/constants/stings.dart';

import 'presentation/screens/login_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => LoginScreen());
    }
  }
}
