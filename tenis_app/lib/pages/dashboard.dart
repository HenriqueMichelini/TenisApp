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
              // App Title
              Row(
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
              ),
              //  App Logo & Profile infos
              Container(
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
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OptionButtons(
                        textData: "TORNEIO",
                        icon: Icons.star,
                        onTap: () {},
                      ),
                      OptionButtons(
                        textData: "TORNEIO",
                        icon: Icons.star,
                        onTap: () {},
                      ),
                      OptionButtons(
                        textData: "TORNEIO",
                        icon: Icons.star,
                        onTap: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                    ), // Add some vertical space between the rows
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OptionButtons(
                          textData: "TORNEIO",
                          icon: Icons.star,
                          onTap: () {},
                        ),
                        OptionButtons(
                          textData: "TORNEIO",
                          icon: Icons.star,
                          onTap: () {},
                        ),
                        OptionButtons(
                          textData: "TORNEIO",
                          icon: Icons.star,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
