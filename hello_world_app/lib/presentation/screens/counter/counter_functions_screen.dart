import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Functions'),
          centerTitle: true,
          actions: [],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
                  style: const TextStyle(
                    fontSize: 160,
                    fontWeight: FontWeight.w600,
                    color: Colors.blueAccent,
                  )),
              Text('Click${clickCounter == 1 ? '' : 's'}',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Colors.blueAccent,
                  )),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              backgroundColor: Colors.grey,
            ),
            SizedBox(height: 10),
            CustomButton(
              icon: Icons.plus_one_outlined,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
              backgroundColor: Colors.green,
            ),
            SizedBox(height: 10),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                if (clickCounter == 0) return;

                setState(() {
                  clickCounter--;
                });
              },
              backgroundColor: Colors.red,
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final double? elevation;
  final double? hoverElevation;
  final Color? foregroundColor;

  const CustomButton(
      {super.key,
      required this.icon,
      this.onPressed,
      this.backgroundColor,
      this.elevation,
      this.hoverElevation,
      this.foregroundColor});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      hoverElevation: hoverElevation,
      elevation: elevation,
      backgroundColor: backgroundColor,
      onPressed: onPressed,
      foregroundColor: foregroundColor,
      child: Icon(icon),
    );
  }
}
