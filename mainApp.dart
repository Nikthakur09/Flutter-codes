import 'package:flutter/material.dart';
import 'package:login_screen/src/provider.dart';

import 'login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
     
      child: MaterialApp(
        title: 'Hey Log me in !!!',
        home: Scaffold(
          
          body: LoginScreen(),
        ),
      ),
    );
  }
}