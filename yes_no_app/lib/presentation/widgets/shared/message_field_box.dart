import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(430),
    );

    final textController = TextEditingController();
    final focusNode = FocusNode();

    final colors = Theme.of(context).colorScheme;

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: InputDecoration(
        fillColor: colors.primary,
        suffixIconColor: Colors.white,
        hintStyle: TextStyle(color: Colors.white),
        hintText: 'Send a message to Mina',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          onPressed: () {
            final textValue = textController.value.text;

            textController.clear();

            onValue(textValue);
          },
          icon: Icon(Icons.send),
        ),
      ),
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus(); // Focus node
        onValue(value);
        //value;
      },
    );
  }
}
