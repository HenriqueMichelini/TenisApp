import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  const TextComponent({
    super.key,
    required this.textData,
    this.textColor = Colors.white,
    this.textFontSize = 20.0,
    this.textFontWeight = FontWeight.normal,
  });

  final String textData;
  final Color textColor;
  final double textFontSize;
  final FontWeight textFontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      style: TextStyle(
        color: textColor,
        fontSize: textFontSize,
        fontWeight: textFontWeight,
      ),
    );
  }
}
