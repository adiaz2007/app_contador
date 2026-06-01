// Archivo: routes/app_routes.dart
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/info_screen.dart'; 

class AppRoutes {
  static Map<String, WidgetBuilder> get routes {
    return {
      '/': (context) => const HomeScreen(),
      '/info': (context) => const InfoScreen(), 
    };
  }
}