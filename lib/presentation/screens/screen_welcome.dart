import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wapig/presentation/screens/login.dart';
import 'package:wapig/presentation/screens/app_logo_images.dart'; // Assuming renamed

class ScreenWelcome extends StatefulWidget {
  const ScreenWelcome({super.key});

  @override
  _ScreenWelcomeState createState() => _ScreenWelcomeState();
}

class _ScreenWelcomeState extends State<ScreenWelcome> {
  late Timer? _timer;//Averiguar

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), () {
      _timer = null;
      setState(() {
        _isLoading = false;
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 242, 248),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppLogoAndImages(),
          _isLoading ? const CircularProgressIndicator() : Container(),
        ],
      ),
    );
  }
}
