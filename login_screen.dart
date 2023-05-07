import 'dart:js';

import 'package:flutter/material.dart';
import 'package:login_screen/src/provider.dart';

import 'bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    final block = Provider.of(context);
    return Container(
      margin: const EdgeInsets.all(25.0),
      child: Column(children: [
        emailField(block),
        passwordField(block),
        const SizedBox(
          height: 30,
        ),
        submitButton(),
      ]),
    );
  }

  Widget emailField(Bloc block) {
    return StreamBuilder(
        stream: block.email,
        builder: (context, snapshot) {
          return TextField(
            onChanged: (value) {
              block.changeEmail(value);
            },
            decoration: InputDecoration(
              labelText: 'Email Address',
              hintText: 'you@gmail.com',
              errorText: snapshot.error as String,
            ),
          );
        });
  }

  Widget passwordField(Bloc block) {
    return StreamBuilder(
        stream: block.password,
        builder: (context, snap) {
          return TextField(
            onChanged: block.changePassword,
            obscureText: true,
            decoration: InputDecoration(
              errorText: snap.error as String,
              labelText: 'Password',
              hintText: 'Must be more than 4 letters',
            ),
          );
        });
  }

  Widget submitButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.blue,
      child: const Text('Submit'),
    );
  }
}
