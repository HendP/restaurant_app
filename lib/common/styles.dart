import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xFFCDA61B);
const Color secondaryColor = Color(0xFFFFFFFF);

final TextTheme myTextTheme = TextTheme(
  headline1: GoogleFonts.robotoSlab(
      fontSize: 92, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: GoogleFonts.robotoSlab(
      fontSize: 57, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3:
  GoogleFonts.robotoSlab(fontSize: 46, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.robotoSlab(
      fontSize: 32, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headline5:
  GoogleFonts.robotoSlab(fontSize: 23, fontWeight: FontWeight.w400),
  headline6: GoogleFonts.robotoSlab(
      fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.robotoSlab(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.robotoSlab(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.ptSans(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.ptSans(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.ptSans(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.ptSans(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.ptSans(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

