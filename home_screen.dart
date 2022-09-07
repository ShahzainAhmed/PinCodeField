// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PinCode Text Fields"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PinCodeTextField(
              appContext: context,
              length: 4,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                activeFillColor: Colors.pink,
                inactiveFillColor: Colors.red,
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                selectedColor: Colors.deepOrange,
                selectedFillColor: Colors.cyan,
              ),

              obscureText: true, // to hide code
              obscuringCharacter: "*",
              keyboardType: TextInputType.number,
              cursorColor: Colors.pink,

              onChanged: (value) {},
            )
          ],
        ),
      ),
    );
  }
}
