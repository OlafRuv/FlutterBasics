import 'package:fl_widgets/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
    const CustomInputField({
      Key? key,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        print(value);
      },
      validator: (value) {
        if ( value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras': null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: AppTheme.primary,
      decoration:const InputDecoration(
        hintText: 'Nombre del Usuario',
        labelText: 'Nombre',
        labelStyle: TextStyle(color: AppTheme.primary),
        helperText: 'Ingresa tu nombre',
        counterText: '3 caracteres',
        suffixIcon: Icon(Icons.group_rounded, color: AppTheme.primary,),
        // prefixIcon: Icon(Icons.group_rounded, color: AppTheme.primary,),
        // icon: Icon(Icons.assignment_ind_rounded, color: AppTheme.primary,),
      ),
    );
  }
}