import 'package:flutter/material.dart';
import 'package:myapp/src/features/authentication/screens/welcome/signup_screen.dart';

import '../constants/colors.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key, this.buttonText, this.onTap});
  final String? buttonText;
  final Widget? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (e)=> onTap!,
          ),
        );
      },
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              buttonText!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
        ),
      )
    );
  }
}
