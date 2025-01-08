import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  final String text;
  final String? imageUrl;

  const HerMessageBubble({super.key, required this.text, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(text, style: TextStyle(color: Colors.white)),
          ),
        ),
        SizedBox(height: 10),
        _ImageBubble(imageUrl: imageUrl)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String? imageUrl;

  const _ImageBubble({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl ?? 'https://pbs.twimg.com/media/Dx_k0v2UwAAUZ2z.jpg',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text('Loading image...'),
          );
        },
      ),
    );
  }
}
