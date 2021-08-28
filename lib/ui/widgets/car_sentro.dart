import 'package:jual_mobil/ui/widgets/detail_product.dart';
import 'package:jual_mobil/ui/shared/theme.dart';
import 'package:flutter/material.dart';

class CarSentro extends StatelessWidget {
  const CarSentro({Key? key}) : super(key: key);

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
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: secondaryColor,
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
                  color: secondaryColor,
                ),
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Banda Aceh',
              style: blueTextStyle.copyWith(
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
