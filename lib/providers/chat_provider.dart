import 'package:flutter/material.dart';
import 'package:myapp/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messagesList = [
    Message(text: 'Hi, how can I help you?', chatUser: ChatUser.yo),
    Message(text: 'Yeah ', chatUser: ChatUser.bot)
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, chatUser: ChatUser.yo);
    messagesList.add(newMessage);
    notifyListeners();
  }
}
