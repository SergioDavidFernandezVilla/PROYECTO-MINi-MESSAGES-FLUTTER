import 'package:flutter/material.dart';
import 'package:myapp/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'Hi, how can I help you?', chatUser: ChatUser.bot),
    Message(
        text: 'Yeah, can you help me, with this code?', chatUser: ChatUser.yo)
  ];

  Future<void> sendMessage(String text) async {
    //TODO: Implementar lógica para enviar mensaje
  }
}
