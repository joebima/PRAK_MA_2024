import 'package:flutter/material.dart';
import 'package:flutterbasic/second_screen.dart';

class FirstScreen extends StatelessWidget {
  final String message = 'Selamat Belajar!';
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return const SecondScreen();
              // }));
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondScreen(message)));
            },
            child: const Text(
              'Pindah Screen',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
