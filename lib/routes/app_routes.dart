import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> get routes {
    return {
      '/': (context) => const HomeScreen(),
    };
  }
}
