import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/input_form.dart';
import 'package:flutter_application_2/shared/rutas_constantes.dart';

class InputPage extends StatelessWidget {
  InputPage({super.key});

  final nombreController = TextEditingController();
  final contraseniaController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.person),
        title: const Text('Login'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: CachedNetworkImageProvider(
                  "https://esports.as.com/2020/01/08/aLexBY11.jpg?hash=bebf569a488c2b210c2fab63f9a92fac50e53da2"
                  ),
              ),
              const SizedBox(
                height: 10,
              ),
              InputForm(
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
              InputForm(
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
              OutlinedButton(
                
              onPressed: () {
              Navigator.pushNamed(context, Rutas.inicio.name);
        },
        child: const Text('Confirmar', style: TextStyle(color: Colors.black),),
      ),
              const Spacer(),
            ],
          ),
        ),
      ),
      //Aqui
    );
  }

  /*getInputValue() {
    if (formKey.currentState!.validate()) {
      final data = {
        'nombre': nombreController.text,
        'contrasenia': contraseniaController.text,
      };
    print(data);
      
    }
  }*/
}