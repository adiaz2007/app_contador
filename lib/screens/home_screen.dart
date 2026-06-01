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
      extendBodyBehindAppBar: true, 
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        
        
        title: Image.asset(
          'assets/images/logo.png', 
          height: 40,               
          fit: BoxFit.contain,      
        ),
        
        
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert, 
              color: Colors.white, 
              size: 28,
            ),
            onPressed: () {
              
              Navigator.pushNamed(context, '/info');
            },
          ),
          const SizedBox(width: 8), 
        ],
      ),

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fondo1.png'), 
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Almas recolectadas:',
                style: TextStyle(fontSize: 20, color: Colors.white70),
              ),
              const SizedBox(height: 10),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/sould.png', 
                    width: 70, 
                  ),
                  const SizedBox(width: 40),
                  Text(
                    '$counter', 
                    style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.white)
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            heroTag: 'btn1',
            onPressed: _decrement,
            backgroundColor: Colors.grey[800],
            child: const Icon(Icons.remove, color: Colors.white),
          ),
          FloatingActionButton(
            heroTag: 'btn2',
            onPressed: _reset,
            backgroundColor: Colors.black,
            child: const Icon(Icons.refresh, color: Colors.white),
          ),
          FloatingActionButton(
            heroTag: 'btn3',
            onPressed: _increment,
            backgroundColor: Colors.cyan[800],
            child: const Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}