import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart';
import 'package:jual_mobil/ui/shared/theme.dart';

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

      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
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
          ],
        ),
      );
    }

    Widget content() {
      Widget headerContent() {
        return Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
            right: defaultMargin,
            left: defaultMargin,
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
                ).format(3200000000),
                style: blueTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
      }

      Widget descriptionContent() {
        title(int pageIndex, String text) {
          return Container(
            child: Text(
              text,
              style: blackTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16,
              ),
            ),
          );
        }

        pageView() {
          return Container(
            width: double.infinity,
            height: 200,
            child: PageView(
              children: [
                Container(
                  child: Text('Ini deskripsi'),
                ),
                Container(
                  child: Text('Ini spesifikasi'),
                ),
              ],
            ),
          );
        }

        return Container(
          margin: EdgeInsets.only(top: defaultMargin),
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  title(0, 'Description'),
                  title(1, 'Specification'),
                ],
              ),
              pageView(),
            ],
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
      appBar: AppBar(
        backgroundColor: secondaryColor,
        iconTheme: IconThemeData(color: primaryColor),
        elevation: 0,
      ),
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
