import 'package:flutter/material.dart';

class TabThree extends StatelessWidget {
  const TabThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          Text('Tab Three'),
        ])
      ),
    );
  }
}