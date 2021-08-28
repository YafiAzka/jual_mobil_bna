import 'package:flutter/material.dart';
import 'package:jual_mobil/ui/shared/theme.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: defaultMargin,
        ),
        child: Row(
          children: [
            Text(
              'Welcome,\nAzka',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/profile_icon.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      child: ListView(
        children: [
          header(),
        ],
      ),
    );
  }
}
