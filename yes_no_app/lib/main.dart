import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme(selectedColor: 6).theme(),
        home: Scaffold(
          appBar: AppBar(title: Text('Yes, No App')),
          body: Center(
            child:
                FilledButton.tonal(onPressed: () {}, child: Text('Click me')),
          ),
        ));
  }
}
