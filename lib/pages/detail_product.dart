import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart';
import 'package:jual_mobil/shared/theme.dart';

class DetailProduct extends StatefulWidget {
  DetailProduct({Key? key}) : super(key: key);

  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  int currentIndex = 0;

  List imageUrl = [
    'assets/list1.jpg',
    'assets/list2.jpg',
    'assets/list3.jpg',
    'assets/list4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    Widget header() {
      int index = -1;

      indicator(int index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 2),
          width: currentIndex == index ? 16 : 4,
          height: 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: currentIndex == index ? primaryColor : unselectedColor,
          ),
        );
      }

      return Column(
        children: [
          Stack(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CarouselSlider(
                    items: imageUrl
                        .map(
                          (image) => Image.asset(
                            image,
                            width: MediaQuery.of(context).size.width,
                            height: 510,
                            fit: BoxFit.cover,
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                      initialPage: 0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageUrl.map(
                        (e) {
                          index++;
                          return indicator(index);
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: 30,
                  right: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.chevron_left,
                        color: whiteColor,
                      ),
                    ),
                    Icon(Icons.shopping_bag, color: whiteColor),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget content() {
      headerContent() {
        return Container(
          margin: EdgeInsets.only(
            top: 30,
            right: 30,
            left: 30,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Maserati',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Car',
                      style: greyTextStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Text(
                NumberFormat.currency(
                  locale: 'id',
                  symbol: 'Rp ',
                  decimalDigits: 0,
                ).format(3000000000),
                style: blueTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
      }

      descriptionContent() {
        return Container(
          margin: EdgeInsets.only(
            top: 30,
            right: 30,
            left: 30,
          ),
          width: double.infinity,
          child: Column(
            children: [],
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
        ),
        child: Column(
          children: [
            headerContent(),
            descriptionContent(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
