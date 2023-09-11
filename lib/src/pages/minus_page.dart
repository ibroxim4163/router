import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:routes/src/provider/counter_provider.dart';

class MinusPage extends StatelessWidget {
  const MinusPage({super.key});

  @override
  Widget build(BuildContext context) {
    final count = Provider.of<CounterProvider>(context).count;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: ,
            children: [
              Text(
                count.toString(),
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().decrement();
                },
                child: const Text(
                  "-",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.go("/");
                },
                child: const Text(
                  "Go To Home Page",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
