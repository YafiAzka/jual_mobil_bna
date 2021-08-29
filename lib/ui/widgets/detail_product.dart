import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
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

  List _similar = [
    'assets/list3.jpg',
    'assets/maserati.jpg',
    'assets/mc.jpg',
    'assets/supra.jpg',
    'assets/tesla.jpg',
    'assets/lamborgini.jpg',
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
            color: currentIndex == index ? secondaryColor : unselectedColor,
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 15),
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
        title(String text) {
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
          customPage(String text) {
            return Container(
              padding: EdgeInsets.all(5),
              child: Text(text),
            );
          }

          return Container(
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: greyColor.withOpacity(0.3),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: PageView(
              children: [
                customPage('Ini deskripsi'),
                customPage('Ini spesifikasi'),
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
                  title('Description'),
                  title('Specification'),
                ],
              ),
              pageView(),
            ],
          ),
        );
      }

      Widget userInfo() {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            top: defaultMargin,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            border: Border(
              top: defaultBorder,
              bottom: defaultBorder,
            ),
          ),
          child: Row(
            children: [
              // NOTE : Profile Pic
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/profile_icon.png'),
                  ),
                ),
              ),

              // NOTE : User Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ayam'),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 20,
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10),
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/like.png'),
                            ),
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Dealer',
                            style: greyTextStyle.copyWith(
                              fontWeight: light,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // NOTE : Icon
              Icon(
                Ionicons.chevron_forward,
                color: greyColor,
              ),
            ],
          ),
        );
      }

      Widget similar() {
        return Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Similar',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _similar
                      .map(
                        (e) => Container(
                          width: 80,
                          height: 60,
                          margin: EdgeInsets.only(
                            left: e == _similar[0] ? 20 : 0,
                            right: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(e),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        );
      }

      Widget button() {
        return Container(
          margin: EdgeInsets.all(defaultMargin),
          width: double.infinity,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Hubungi penjual',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerContent(),
            descriptionContent(),
            userInfo(),
            similar(),
            button(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: secondaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Detail Product',
          style: whiteTextStyle.copyWith(
            fontSize: 20,
            fontWeight: bold,
          ),
        ),
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
