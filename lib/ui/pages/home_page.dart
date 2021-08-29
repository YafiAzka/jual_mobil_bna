import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:jual_mobil/ui/pages/search_page.dart';
import 'package:jual_mobil/ui/shared/theme.dart';
import 'package:jual_mobil/ui/widgets/car_list.dart';
import 'package:jual_mobil/ui/widgets/car_sentro.dart';
import 'package:jual_mobil/ui/widgets/car_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: defaultMargin,
          horizontal: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Welcome,\nAzka',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 22,
              ),
            ),
            Container(
              width: 80,
              height: 80,
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

    Widget search() {
      return Container(
        margin: EdgeInsets.all(defaultMargin),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: secondaryColor,
        ),
        child: TextFormField(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchPage(),
              ),
            );
          },
          readOnly: true,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: ' Temukan Mobil Impian anda',
            hintStyle: blackTextStyle,
            suffixIcon: Icon(Ionicons.search, color: blackColor),
          ),
        ),
      );
    }

    Widget categories() {
      carCategory(int index, String text, String imageUrl) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imageUrl,
                width: 28,
              ),
              SizedBox(height: 10),
              Text(
                text,
                style: blackTextStyle.copyWith(fontSize: 11),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      }

      //
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Container(
          height: 100,
          width: double.infinity,
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: unselectedColor.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 8,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              carCategory(0, 'Jual Mobil\nAnda', 'assets/car_key.png'),
              carCategory(1, 'Mobil\nTersimpan', 'assets/inbox_fav.png'),
              carCategory(2, 'Bandingkan\nMobil', 'assets/vs.png'),
              carCategory(3, 'Kalkulator\nPinjaman', 'assets/calculator.png'),
            ],
          ),
        ),
      );
    }

    Widget carSentro() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Carsentro',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Show More',
                    style: blueTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CarSentro(id: 0),
                  CarSentro(id: 1),
                  CarSentro(id: 2),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget newArrival() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrival',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Show More',
                    style: blueTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(vertical: defaultMargin),
              child: Row(
                children: [
                  CarTile(
                    id: 0,
                    imageUrl: 'assets/maserati.jpg',
                    price: 1200000,
                    title: 'Maserati',
                  ),
                  CarTile(
                    id: 1,
                    imageUrl: 'assets/maserati.jpg',
                    price: 1200000,
                    title: 'Maserati',
                  ),
                  CarTile(
                    id: 2,
                    imageUrl: 'assets/maserati.jpg',
                    price: 1200000,
                    title: 'Maserati',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget listCar() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 70,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrival',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Show More',
                    style: blueTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            CarList(),
            CarList(),
            CarList(),
          ],
        ),
      );
    }

    return Container(
      child: ListView(
        children: [
          header(),
          search(),
          categories(),
          carSentro(),
          newArrival(),
          listCar(),
        ],
      ),
    );
  }
}
