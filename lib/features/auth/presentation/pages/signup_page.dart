import 'package:flutter/material.dart';
import 'package:flutter_clean_blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter_clean_blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Up.',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            const SizedBox(height: 30),
            AuthField(hintText: 'Name'),
            const SizedBox(height: 15),
            AuthField(hintText: 'Email'),
            const SizedBox(height: 15),
            AuthField(hintText: 'Password'),
            const SizedBox(height: 20),
            const AuthGradientButton(),
          ],
        ),
      ),
    );
  }
}
