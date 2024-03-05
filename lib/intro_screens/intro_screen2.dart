import 'package:flutter/material.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff269BD5),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/onboarding2.png',
                fit: BoxFit.contain,
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              const SizedBox(height: 16),
              const Text('FILTRA ACTIVIDADES\nY PROYECTOS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppins',
                      fontSize: 25,
                      fontWeight: FontWeight.w900)),
              const SizedBox(height: 8),
              const Text(
                  'Participa de actividades agrupadas\npor su ODS (Objetivos de Desarrollo\n Sostenible) respectivo.', 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              const SizedBox(height: 64),
            ],
          ),
        ),
      ),
    );
  }
}
