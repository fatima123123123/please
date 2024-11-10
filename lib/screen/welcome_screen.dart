import 'package:flutter/material.dart';
import 'package:please/screen/signUp_screen.dart';
import 'package:please/screen/sign_screen.dart';
import 'package:please/widgets/custom_scaffold.dart';
import 'package:please/widgets/welcomeButton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 1,
                child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 40.0,
                horizontal: 40.0,

              ),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(

                        text: 'Welcome Back! \n',
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.green,
                        ),
                      ),
                      TextSpan(
                        text: '\nprotecting your car \n',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.green,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
          const Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign in',
                      onTap: SignInScreen(),
                      color: Colors.green,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                      child: WelcomeButton(
                        buttonText: 'Sign up',
                        onTap: SignUpScreen(),
                        color: Colors.green,
                        textColor: Colors.white,
                      ),
                  ),

                ],
              ),
            ),
          ), // This will push the content above upwards
        ],
      ),
    );
  }
}
