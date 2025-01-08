import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: 'hi', fromWho: FromWho.me),
    Message(text: 'how are you?', fromWho: FromWho.me),
    Message(text: 'well, and you?', fromWho: FromWho.hers),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  void moveScrollToBottom() {
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent + 100,
      duration: Duration(milliseconds: 100),
      curve: Curves.bounceInOut,
    );
  }
}
