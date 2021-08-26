import 'package:jual_mobil/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String text;

  const CustomButtom({
    Key? key,
    this.text = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 68,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/form/button_primary.png'),
        ),
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 17,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}
