import 'package:flutter/material.dart';

import '../constants/image_strings.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            calendarImg,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
          ),
          SafeArea(
            child: child!,
          ),
        ],
      ),
    );;
  }
}
