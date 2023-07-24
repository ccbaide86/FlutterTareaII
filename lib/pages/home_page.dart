import 'package:flutter_application_2/shared/rutas_constantes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Home'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, Rutas.inputsPage.name),
              child: const Text('¡Bienvenido a la pagina de inicio!', style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}