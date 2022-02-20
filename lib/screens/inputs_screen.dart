import 'package:fl_widgets/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomInputField(
                hintText: 'Nombre del usuario',
                labelText: 'Nombre',
              ),
              SizedBox(height: 30),
              CustomInputField(
                hintText: 'Apellido del usuario',
                labelText: 'Apellido',
              ),
              SizedBox(height: 30),
              CustomInputField(
                hintText: 'Email del usuario',
                labelText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30),
              CustomInputField(
                hintText: 'Contraseña',
                labelText: 'Contraseña',
                isPassword: true,
              ),
              SizedBox(height: 30),

            ],
          ),
        ),
      ) 
    );
  }
}

