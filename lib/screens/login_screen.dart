import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/wel.webp',
                height: height * 0.3,
              ),
              const Text('Welcome Back'),
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_outlined),
                          labelText: 'E-Mail',
                          hintText: 'E-Mail',
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: 'Password',
                          hintText: 'Password',
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.remove_red_eye_sharp))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password?',
                          )),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
