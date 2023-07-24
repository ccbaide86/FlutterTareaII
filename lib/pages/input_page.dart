import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/home_form.dart';

class InputPage extends StatelessWidget {
  InputPage({super.key});

  final nombreController = TextEditingController();
  final contraseniaController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeForm(
                label: 'Ingrese su nombre',
                icon: Icons.person,
                controller: nombreController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ingrese un nombre';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              HomeForm(
                label: 'Ingrese una contraseña',
                icon: Icons.password,
                obscureText: true,
                mostrarBoton: true,
                controller: contraseniaController,
                validator: (value) {
                  if (value!.length < 6) {
                    return 'Ingrese una contraseña valida';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getInputValue();
        },
        child: const Icon(Icons.edit),
      ),
    );
  }

  getInputValue() {
    if (formKey.currentState!.validate()) {
      final data = {
        'nombre': nombreController.text,
        'contrasenia': contraseniaController.text,
      };
      print(data);
    }
  }
}