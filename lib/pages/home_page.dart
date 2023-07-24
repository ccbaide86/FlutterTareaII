import 'package:flutter_application_2/shared/rutas_constantes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, Rutas.inputsPage.name),
              child: const Text('HOME'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}