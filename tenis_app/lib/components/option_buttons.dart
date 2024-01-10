import 'package:flutter/material.dart';
import 'package:tenis_app/background_colors.dart';
import 'package:tenis_app/components/text_component.dart';

class OptionButtons extends StatelessWidget {
  final String textData;
  final IconData icon;
  final VoidCallback onTap;

  const OptionButtons({
    super.key,
    required this.textData,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          customBorder: const CircleBorder(),
          onTap: onTap,
          child: Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: secondaryColor,
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 7),
          child: TextComponent(
            textData: textData,
            textFontSize: 12,
          ),
        )
      ],
    );
  }
}
