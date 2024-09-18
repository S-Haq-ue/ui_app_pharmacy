import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.5,0.3),
            end: Alignment.bottomRight,
            colors: [
            Color.fromARGB(255, 149, 219, 245),
            Color.fromARGB(255, 11, 122, 178),
          ]),
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                    Color(0xFFFFFFFF),
                    Color.fromARGB(255, 185, 185, 185),
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
