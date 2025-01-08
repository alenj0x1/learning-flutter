import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'takataka', fromWho: FromWho.me),
    Message(text: 'how are you?', fromWho: FromWho.me),
    Message(text: 'well, and you?', fromWho: FromWho.hers),
  ];

  Future<void> sendMessage(String text) async {}
}
