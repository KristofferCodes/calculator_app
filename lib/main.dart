import 'package:calculator_app/widgets/button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        // textTheme: GoogleFonts.ralewayTextTheme(
        //   Theme.of(context).textTheme,
        // ),
        useMaterial3: true,
      ),
      home: const Server(),
    );
  }
}

class Server extends StatelessWidget {
  const Server({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Group.png',
              scale: 4,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Successful!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 35.0, right: 35.0, bottom: 35.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "You have successfully reset your password, ",
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                    children: [
                      TextSpan(
                        text: ' Sign in',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      TextSpan(
                        text: ' to continue.',
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      )
                    ]),
              ),
            ),
            PrimaryButton(text: 'Continue to Sign in', onTap: () {})
          ],
        ),
      ),
    );
  }
}
