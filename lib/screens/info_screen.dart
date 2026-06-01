
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white), 
      ),
      
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fondo1.png'), 
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
          ),
        ),
        
        
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 28),
                  decoration: BoxDecoration(
                    color: Colors.black45, 
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.cyan.shade400, 
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.cyan.withOpacity(0.3),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: const Text(
                    'Acerca del Desarrollador',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                
                const SizedBox(height: 40),

                
                Container(
                  width: 110,  
                  height: 110, 
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black38,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.cyan.shade400.withOpacity(0.6), 
                        blurRadius: 25, 
                        spreadRadius: 3,
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0), 
                    child: CircleAvatar(
                      radius: 50, // Radio más pequeño
                      backgroundColor: Colors.grey, 
                      backgroundImage: AssetImage('assets/images/developer.png'),
                    ),
                  ),
                ),
                
                const SizedBox(height: 30),

                const Text(
                  'Desarrollado por:',
                  style: TextStyle(
                    fontSize: 14, 
                    color: Colors.white70,
                    fontStyle: FontStyle.italic
                  ),
                ),
                const SizedBox(height: 5),
                
                
                Text(
                  'Andrés Díaz', 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32, 
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.cyan.shade300,
                        blurRadius: 15,
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 10),

               
                const Text(
                  'Estudiante de Ingeniería de Sistemas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.cyanAccent,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),

                const SizedBox(height: 25),

                
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white12),
                  ),
                  child: const Text(
                    '"Me apasiona la tecnología y la lógica detrás del software. Elegí esta carrera porque me fascina la capacidad de resolver problemas complejos, transformar ideas en realidad a través del código y crear herramientas que puedan impactar y facilitar la vida de las personas."',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                      height: 1.5, 
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                
                const SizedBox(height: 40),
                
                const Text(
                  'Versión 0.0.1',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.cyan,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}