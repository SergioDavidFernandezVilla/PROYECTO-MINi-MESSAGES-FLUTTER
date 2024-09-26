import 'package:flutter/material.dart';

class FormMessageWidget extends StatelessWidget {
  final ValueChanged<String> valueOn;

  const FormMessageWidget({super.key, required this.valueOn});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final styleForm = OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: const BorderSide(color: Colors.transparent));

    final formSendStyle = InputDecoration(
        filled: true,
        enabledBorder: styleForm,
        focusedBorder: styleForm,
        hintText: 'Enviar mensaje',
        suffixIcon: IconButton(
            onPressed: () {
              valueOn(textController.text);
              textController.clear();
            },
            icon: const Icon(Icons.send)));

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      decoration: formSendStyle,
      controller: textController,
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
        valueOn(value);
      },
    );
  }
}
