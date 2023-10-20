import 'package:flutter/material.dart';
import 'package:sales_management_app/screens/home_page.dart';
import 'package:sales_management_app/screens/login_screen.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Image.asset('assets/images/wel.webp'),
                const SizedBox(
                  height: 10.0,
                ),
                Text('Register your account'.toUpperCase()),
                Form(
                    child: Column(
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        hintText: 'Full Name',
                        labelText: 'Full Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.dialer_sip_outlined),
                        hintText: 'Phone Number',
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail_outline),
                        hintText: 'E-Mail',
                        labelText: 'E-Mail',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        hintText: 'Password',
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        hintText: 'Comfirm Password',
                        labelText: 'Comfirm Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          },
                          child: const Text('Register')),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('OR'),
                    const SizedBox(
                      height: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {},
                        child: const Text('Register with Google')),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text('Already have an account?'),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            },
                            child: Text('login'.toUpperCase()))
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
