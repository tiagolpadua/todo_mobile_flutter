import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          const Center(
            child: Text("Splash!"),
          )
        ],
      ),
    );
  }
}
