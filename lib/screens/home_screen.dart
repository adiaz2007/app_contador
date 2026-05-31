import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
 

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>(){
  int counter = 0; 

  void _increment(){
    setState( () => counter++);
  }
  void _decrement(){
    setState( () => counter--);
  }
  void _reset(){
    setState( () => counter = 0);
  }
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}