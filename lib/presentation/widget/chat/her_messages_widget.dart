import 'package:flutter/material.dart';

class HerMessagesBuuble extends StatelessWidget {
  const HerMessagesBuuble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            child: Text(
              'Haz un app de messages con flutter.',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        _ImageBubble(),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRect(
      child: Image.network(
        'https://yesno.wtf/assets/no/24-159febcfd655625c38c147b65e5be565.gif',
        width: size.width * 0.7,
        height: 230,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 230,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Aun se esta enviando dicho mensaje...'),
          );
        },
      ),
    );
  }
}
