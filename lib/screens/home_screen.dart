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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            heroTag: 'btn1',
            onPressed: _decrement,
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            heroTag: 'btn2',
            onPressed: _reset,
            child: const Icon(Icons.refresh),
          ),
          FloatingActionButton(
            heroTag: 'btn3',
            onPressed: _increment,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}