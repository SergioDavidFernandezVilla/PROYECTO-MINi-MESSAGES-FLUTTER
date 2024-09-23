import 'package:flutter/material.dart';
import 'package:myapp/presentation/widget/chat/form_message_widget.dart';
import 'package:myapp/presentation/widget/chat/her_messages_widget.dart';
import 'package:myapp/presentation/widget/chat/my_message_widget.dart';

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
        body: const Column(
          children: [
            Expanded(child: _ChatView()),
            FormMessageWidget(),
          ],
        ));
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return (index % 2 == 0
              ? const MyMessageBuuble()
              : const HerMessagesBuuble());
        },
        itemCount: 2,
      ),
    ));
  }
}
