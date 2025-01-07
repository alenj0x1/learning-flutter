import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/736x/73/03/1b/73031b96a34ed67524f64992ebf150dd.jpg'),
          ),
        ),
        title: Text('Mina 🐧'),
      ),
      body: Container(
        
      ),
    );
  }
}
