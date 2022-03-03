import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.textInputType,
    this.hideField = false,
  }) : super(key: key);

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? textInputType;
  final bool hideField;

  @override
  Widget build(BuildContext context) {
    bool isHideField = hideField;

    bool showPassword() {
      if (hideField && !isHideField) {
        isHideField = true;
      } else {
        isHideField = false;
      }
      print('$isHideField - $hideField');
      return isHideField && hideField;
    }

    return TextFormField(
      keyboardType: textInputType ?? TextInputType.text,
      autofocus: true,
      obscureText: isHideField && hideField,
      textCapitalization: TextCapitalization.words,
      onChanged: (str) {
        print('Campo $labelText: $str');
      },
      validator: (str) {
        if (str == null || str.isEmpty) {
          return 'Este campo es requerido.';
        }
        return str.length < 3 ? 'Mínimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        contentPadding: const EdgeInsets.all(10),
        isDense: true,
        counterText: '3 caracteres',
        suffixIcon: (hideField)
            ? IconButton(
                onPressed: () => showPassword(), icon: Icon(suffixIcon))
            : suffixIcon == null
                ? null
                : Icon(suffixIcon),
        //prefixIcon: Icon(Icons.verified_user_outlined),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
