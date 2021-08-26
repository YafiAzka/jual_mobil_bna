import 'package:jual_mobil/shared/theme.dart';
import 'package:jual_mobil/widgets/car_tile.dart';
import 'package:flutter/material.dart';

class ListCar extends StatelessWidget {
  final String listTitle;
  final String listDesc;
  final bool hasDesc;

  ListCar({
    Key? key,
    this.listTitle = '',
    this.listDesc = '',
    this.hasDesc = false,
  }) : super(key: key);

  final List carTile = [
    {
      // 'id': 0,
      'title': 'Maserati',
      'imageUrl': 'assets/maserati.jpg',
      'price': 3000000000,
    },
    {
      // 'id': 1,
      'title': 'Tesla',
      'imageUrl': 'assets/tesla.jpg',
      'price': 2800000000,
    },
    {
      // 'id': 2,
      'title': 'MacLaren',
      'imageUrl': 'assets/mc.jpg',
      'price': 3200000000,
    },
    {
      // 'id': 3,
      'title': 'Lamborgini',
      'imageUrl': 'assets/lamborgini.jpg',
      'price': 2500000000,
    },
    {
      // 'id': 4,
      'title': 'Supra',
      'imageUrl': 'assets/supra.jpg',
      'price': 3500000000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  listTitle,
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                ),
                hasDesc == true
                    ? Text(
                        listDesc,
                        style: greyTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      )
                    : SizedBox(),
              ],
            ),
            Text(
              'Lihat semua',
              style: blueTextStyle,
            )
          ],
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          title(),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(20),
              child: Row(
                children: carTile
                    .map(
                      (e) => CarTile(
                        title: e['title'],
                        imageUrl: e['imageUrl'],
                        price: e['price'],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
