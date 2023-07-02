import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int currentCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$currentCounter",
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text('Click${currentCounter == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 26))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          currentCounter++;
          setState(() {});
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
