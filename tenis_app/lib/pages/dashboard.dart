import 'package:flutter/material.dart';
import 'package:tenis_app/background_colors.dart';
import 'package:tenis_app/components/text_component.dart';
import 'package:tenis_app/components/option_buttons.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildAppTitle(),
              _buildAppLogoAndProfile(),
              _buildOptionButtons(),
              _buildFooter()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppTitle() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: const TextComponent(
            textData: "TennisApp",
            textColor: Colors.white,
            textFontSize: 24,
            textFontWeight: FontWeight.bold,
          ),
        ),
        const Icon(
          Icons.sports_tennis,
          size: 30,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget _buildAppLogoAndProfile() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/app_logo.png'),
              color: Colors.white,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextComponent(
                  textData: "Nome",
                  textFontSize: 20,
                  textFontWeight: FontWeight.bold,
                ),
                TextComponent(textData: "Label1", textFontSize: 18),
                TextComponent(textData: "Label2", textFontSize: 18),
                TextComponent(textData: "Label3", textFontSize: 18),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionButtons() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildOptionButton("Torneio", Icons.star, () {}),
            _buildOptionButton("TORNEIO", Icons.star, () {}),
            _buildOptionButton("TORNEIO", Icons.star, () {}),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildOptionButton("TORNEIO", Icons.star, () {}),
              _buildOptionButton("TORNEIO", Icons.star, () {}),
              _buildOptionButton("TORNEIO", Icons.star, () {}),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOptionButton(String text, IconData icon, VoidCallback onTap) {
    return OptionButtons(
      textData: text,
      icon: icon,
      onTap: onTap,
    );
  }

  Widget _buildFooter() {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.only(bottom: 25.0), // Add bottom space
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image(
              image: AssetImage('assets/images/icons/icons8-instagram-50.png'),
              color: Colors.white,
              width: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 16), // Adjust horizontal padding
              child: Image(
                image: AssetImage('assets/images/icons/icons8-whatsapp-50.png'),
                color: Colors.white,
                width: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 1.0), // Adjust horizontal padding
              child: Image(
                image: AssetImage('assets/images/icons/icons8-mail-50.png'),
                color: Colors.white,
                width: 26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
