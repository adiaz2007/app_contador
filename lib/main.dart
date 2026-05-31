import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Quita la rayita roja de "Debug"
      title: 'Contador de Almas',
      initialRoute: '/', // Le dice que inicie en la ruta principal
      routes: AppRoutes.routes, // Llama a tu archivo de rutas
    );
  }
}