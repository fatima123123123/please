import 'package:flutter/material.dart';
import 'package:please/widgets/custom_scaffold.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formSignInKey = GlobalKey<FormState>();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(height: 10),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Form(
                key: _formSignInKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 48.0, // Further increased font size
                        fontWeight: FontWeight.w900,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: const Text('Email', style: TextStyle(fontSize: 20.0)), // Larger label
                        hintText: 'Enter your email',
                        hintStyle: const TextStyle(color: Colors.black26, fontSize: 18.0), // Larger hint
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: const Text('Password', style: TextStyle(fontSize: 20.0)), // Larger label
                        hintText: 'Enter your password',
                        hintStyle: const TextStyle(color: Colors.black26, fontSize: 18.0), // Larger hint
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: _rememberMe,
                              onChanged: (value) {
                                setState(() {
                                  _rememberMe = value!;
                                });
                              },
                            ),
                            const Text(
                              'Remember Me',
                              style: TextStyle(fontSize: 20.0), // Further increased font size
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            // Forgot password action
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.blue, fontSize: 20.0), // Further increased font size
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    ElevatedButton(
                      onPressed: () {
                        if (_formSignInKey.currentState!.validate()) {
                          // Sign-In action
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 60), // Larger button height
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(fontSize: 24.0), // Larger font size
                      ),
                    ),
                    const SizedBox(height: 25.0),
                    const Text(
                      "Or sign in with",
                      style: TextStyle(fontSize: 20.0, color: Colors.black54), // Increased font size
                    ),
                    const SizedBox(height: 10.0),
                    GestureDetector(
                      onTap: () {
                        // Google sign-in action
                      },
                      child: CircleAvatar(
                        radius: 28, // Slightly larger Google button
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/download.png'), // Google logo asset
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}