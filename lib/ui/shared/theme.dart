import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

BorderSide defaultBorder = BorderSide(
  width: 1.5,
  color: unselectedColor.withOpacity(0.3),
);

double defaultMargin = 20.0;

Color primaryColor = Color(0xff0062DD);
Color secondaryColor = Color(0xffffeb3b);
Color purpleColor = Color(0xff200A4D);
Color greenColor = Color(0xff2ecc71);
Color blackColor = Color(0xff1F1D2B);
Color whiteColor = Color(0xffFFFFFF);
Color greyColor = Color(0xff7f8c8d);
Color bgColor = Color(0xffF7F8FA);
Color switchColor = Color(0xffe6e6e6);
Color unselectedColor = Color(0xff9E9D9D);

TextStyle blueTextStyle = GoogleFonts.poppins(
  color: primaryColor,
);

TextStyle yellowTextStyle = GoogleFonts.poppins(
  color: secondaryColor,
);

TextStyle greenTextStyle = GoogleFonts.poppins(
  color: greenColor,
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: purpleColor,
);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: blackColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: whiteColor,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: greyColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
