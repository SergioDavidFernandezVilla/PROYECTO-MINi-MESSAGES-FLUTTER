import 'package:flutter/material.dart';
import 'package:myapp/domain/entities/message.dart';

class MyMessageBuuble extends StatelessWidget {
  final Message message;

  const MyMessageBuuble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            child: Text(
              message.text,
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
