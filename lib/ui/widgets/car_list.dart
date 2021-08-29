import 'package:flutter/material.dart';
import 'package:jual_mobil/ui/shared/theme.dart';

class CarList extends StatelessWidget {
  const CarList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: unselectedColor.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/maserati.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Maserati',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Rp 3.000',
                  style: blueTextStyle,
                )
              ],
            ),
          ),
          Container(
            width: 40,
            height: 25,
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: greenColor,
            ),
            child: Text(
              'Baru',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
