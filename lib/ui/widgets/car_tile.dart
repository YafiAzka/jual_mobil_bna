import 'package:jual_mobil/ui/widgets/detail_product.dart';
import 'package:jual_mobil/ui/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CarTile extends StatelessWidget {
  final int id;
  final String title;
  final String imageUrl;
  final int price;

  const CarTile({
    Key? key,
    required this.id,
    this.title = '',
    this.imageUrl = '',
    this.price = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailProduct(),
        ),
      ),
      child: Container(
        width: 110,
        height: 150,
        margin: EdgeInsets.only(
          right: defaultMargin,
          left: id == 0 ? defaultMargin : 0,
        ),
        padding: EdgeInsets.all(5),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 6),
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 12,
              ),
            ),
            Text(
              NumberFormat.currency(
                locale: 'id',
                symbol: 'Rp ',
                decimalDigits: 0,
              ).format(price),
              style: blueTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
