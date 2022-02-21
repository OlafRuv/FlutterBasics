import 'package:fl_widgets/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
    
    final String? labelText;
    final String? hintText;
    final String? helperText;
    final String? counterText;
    final IconData? icon;
    final IconData? sufixIcon;
    final IconData? prefixIcon;
    final TextInputType? keyboardType;
    final bool isPassword;

    final String formProperty;
    final Map<String,String> formValues;
    
    const CustomInputField({
      Key? key, 
      this.labelText, 
      this.hintText, 
      this.helperText, 
      this.counterText, 
      this.icon,
      this.sufixIcon, 
      this.prefixIcon, 
      this.keyboardType, 
      this.isPassword = false, 
      required this.formProperty, 
      required this.formValues, 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      keyboardType: keyboardType,
      obscureText: isPassword,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) {
        if ( value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras': null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: AppTheme.primary,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: counterText,
        suffixIcon: icon == null ? null : Icon(sufixIcon),
        prefixIcon: icon == null ? null : Icon(prefixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}