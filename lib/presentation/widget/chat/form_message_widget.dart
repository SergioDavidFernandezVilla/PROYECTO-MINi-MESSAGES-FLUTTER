import 'package:flutter/material.dart';

class FormMessageWidget extends StatelessWidget {
  const FormMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final styleForm = OutlineInputBorder(
        borderRadius: BorderRadius.circular(40), 
        borderSide: const BorderSide(color: Colors.transparent));

    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          enabledBorder: styleForm,
          focusedBorder: styleForm,
          hintText: 'Enviar mensaje',
          suffixIcon:
              IconButton(onPressed: () {}, icon: const Icon(Icons.send))),
    );
  }
}
