import 'package:flutter/material.dart';
import 'package:myapp/domain/entities/message.dart';
import 'package:myapp/presentation/widget/chat/form_message_widget.dart';
import 'package:myapp/presentation/widget/chat/her_messages_widget.dart';
import 'package:myapp/presentation/widget/chat/my_message_widget.dart';
import 'package:myapp/providers/chat_provider.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
              padding: EdgeInsets.all(10.2),
              child: Image(
                  image: NetworkImage(
                      'https://yesno.wtf/assets/yes/2-5df1b403f2654fa77559af1bf2332d7a.gif'))),
          title: const Text("Chat Bot"),
          centerTitle: false,
        ),
        body: Column(
          children: [
            const Expanded(child: _ChatView()),
            FormMessageWidget(valueOn: (String value) { 
              final chatProvider = context.read<ChatProvider>();
              chatProvider.sendMessage(value);
             },),
          ],
        ));
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    final chatprovider = context.watch<ChatProvider>();

    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final message = chatprovider.messagesList[index];

          return (
            message.chatUser == ChatUser.bot
                ? const HerMessagesBuuble()
                : MyMessageBuuble( message: message)
          );
        },
        itemCount: chatprovider.messagesList.length,
      ),
    ));
  }
}
