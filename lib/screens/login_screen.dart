import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:ui_app_pharmacy/contants.dart';
import 'package:ui_app_pharmacy/widget/progress.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment(-0.5, 0.3), end: Alignment.bottomRight, colors: [
              Color.fromARGB(255, 149, 219, 245),
              Color.fromARGB(255, 11, 122, 178),
            ]),
          ),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                  gradient: greyGradientLogin,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Bootstrap.person_fill,
                        size: 30,
                        color: Color.fromARGB(255, 50, 178, 242),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        "PHARMACY APP",
                        textScaler: const TextScaler.linear(1.5),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: darkTextColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: greyGradient,
                      ),
                      child: Center(
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: CircleCrossSymbol(),
                              // Image.asset("assets/images/no1.png",color: const Color.fromARGB(255, 111, 189, 217),),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: greyGradientLogin,
                ),
                child: const Center(
                    child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 4, 25, 88)),
                    textScaler: TextScaler.linear(1.5),
                  ),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Don't have an account?",
                style: TextStyle(color: lightTextColor),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Sign in here",
                style: TextStyle(fontWeight: FontWeight.bold, color: lightTextColor),
                textScaler: const TextScaler.linear(1.3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
