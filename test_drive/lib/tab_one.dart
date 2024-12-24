import 'package:flutter/material.dart';
import 'package:test_drive/animated_dropdown.dart';
import 'package:test_drive/counter.dart';

class TabOne extends StatelessWidget {
  const TabOne({super.key});

   @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          Text('Tab One'),
          Counter(),
          AnimatedDropDown(),
        ])
      ),
    );
  }
}