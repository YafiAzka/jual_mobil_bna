import 'package:jual_mobil/ui/widgets/detail_product.dart';
import 'package:jual_mobil/ui/shared/theme.dart';
import 'package:flutter/material.dart';

class CarSentro extends StatelessWidget {
  final int id;
  const CarSentro({
    Key? key,
    required this.id,
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
        height: 140,
        margin: EdgeInsets.only(right: 20, left: id == 0 ? 20 : 0),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: primaryColor,
                ),
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Banda Aceh',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
