import 'package:jual_mobil/ui/pages/main_page.dart';
import 'package:jual_mobil/ui/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  final double width;
  final bool isSkip;

  const CustomButtom({
    Key? key,
    this.text = '',
    this.width = double.infinity,
    this.isSkip = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: isSkip == false ? Radius.circular(10) : Radius.zero,
          bottomRight: isSkip == true ? Radius.circular(10) : Radius.zero,
          bottomLeft: Radius.circular(10),
        ),
        color: Color(0xffffe600),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MainPage(),
            ),
          );
        },
        child: Text(
          text,
          style: whiteTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
