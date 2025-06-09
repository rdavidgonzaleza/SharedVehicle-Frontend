import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextGeneric extends StatelessWidget {
  const TextGeneric({super.key, required this.text, this.color, this.fontSize, this.fontWeight, this.textAlign});

  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 45.0,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}