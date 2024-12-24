import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey, // Background color
        borderRadius: BorderRadius.circular(16), // Rounded corners
      ),
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(8),
      height: 200,
      width: 300,
      child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Container(
              // width: 150,
              decoration: BoxDecoration(
                // color: Colors.blue, // Background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: const Center(
                child: Text(
                  'Counter',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              width: 50,
              margin: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                color: Colors.black54, // Background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: Center(
                child: Text(
                  '$_counter',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: ElevatedButton(
                onPressed: () {
                  print('button pressed!');
                  _incrementCounter();
                },
                child: const Icon(Icons.add),
              ),
            ),
          ])),
    );
  }
}
