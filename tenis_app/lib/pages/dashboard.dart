import 'package:flutter/material.dart';
import 'package:tenis_app/assets/background_colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget variables for TennisApp Text and Sports Tennis Icon
    Widget tennisAppText = Container(
      margin: const EdgeInsets.only(right: 10),
      child: const Text(
        "TennisApp",
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    Widget sportsTennisIcon = const Icon(
      Icons.sports_tennis,
      size: 30,
      color: Colors.white,
    );

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // App Title
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tennisAppText, // Display TennisApp Text
                  sportsTennisIcon, // Display Sports Tennis Icon
                ],
              ),
              //  App Logo & Profile infos
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('../assets/images/app_logo.png',
                      color: Colors.white),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
