import 'package:flutter/material.dart';

class TabTwo extends StatelessWidget {
  const TabTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          const Text('Tab Two'),
          ElevatedButton(
              onPressed: () {
                
              },
              child: const Text('Button'),
            ),
        ])
      ),
    );
  }
}