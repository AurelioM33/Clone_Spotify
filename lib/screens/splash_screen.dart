// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:spotify/screens/home_screen.dart';

class SplashScrenn extends StatefulWidget {
  const SplashScrenn({super.key});

  @override
  State<SplashScrenn> createState() => _SplashScrennState();
}

class _SplashScrennState extends State<SplashScrenn> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomeScreen())));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/spotify.png'),
            ),
          ),
        ),
      ),
    );
  }
}
