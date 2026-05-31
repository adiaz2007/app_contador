import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
 

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  int counter = 0;

  void _increment() {
    setState(() => counter++);
  }

  void _decrement() {
    setState(() => counter--);
  }

  void _reset() {
    setState(() => counter = 0);
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contador')),
      body: Center(
        child: Text('$counter', style: const TextStyle(fontSize: 80)),
      ),
    );
  }
}