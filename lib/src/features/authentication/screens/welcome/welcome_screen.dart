import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/src/constants/image_strings.dart';
import 'package:myapp/src/features/authentication/screens/welcome/login_screen.dart';
import 'package:myapp/src/features/authentication/screens/welcome/signup_screen.dart';
import 'package:myapp/src/widgets/custom_scaffold.dart';
import 'package:myapp/src/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 3,
              child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 40.0,
            ),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome!\n',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w600,
                      )
                    ),
                    TextSpan(
                      text: '\nPlease sign up or login to begin :)',
                      style: TextStyle(
                        fontSize: 20,
                      )
                    )
                  ],
                ),
              ),
            ),
          )),
          const Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Log in',
                      onTap: LogInScreen(),
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign up',
                      onTap: SignUpScreen(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}