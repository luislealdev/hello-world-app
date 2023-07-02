import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int currentCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter Functions Screen"),
          actions: [
            IconButton(
                onPressed: () {
                  currentCounter = 0;
                  setState(() {});
                },
                icon: const Icon(Icons.refresh_outlined))
          ],
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                currentCounter++;
                setState(() {});
              },
              child: const Icon(Icons.plus_one),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                currentCounter--;
                setState(() {});
              },
              child: const Icon(Icons.exposure_minus_1_outlined),
            ),
          ],
        ));
  }
}
