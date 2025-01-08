import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/helpers/get_yes_no_answer.dart';

class ChatProvider extends ChangeNotifier {
  final chatScrollController = ScrollController();
  final _getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'hi', fromWho: FromWho.me),
    Message(text: 'how are you?', fromWho: FromWho.me),
    Message(text: 'well, and you?', fromWho: FromWho.hers),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    if (text.endsWith('?')) {
      await herReply();
    }

    notifyListeners();
    moveScrollToBottom();
  }

  void moveScrollToBottom() {
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent + 200,
      duration: Duration(milliseconds: 100),
      curve: Curves.bounceInOut,
    );
  }

  Future<void> herReply() async {
    final herMessage = await _getYesNoAnswer.getAnswer();
    messageList.add(herMessage);

    notifyListeners();
    moveScrollToBottom();
  }
}
