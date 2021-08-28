import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:jual_mobil/ui/pages/search_page.dart';
import 'package:jual_mobil/ui/shared/theme.dart';
import 'package:jual_mobil/ui/widgets/car_sentro.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      profile() {
        return Row(
          children: [
            Container(
              width: 65,
              height: 65,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/profile_icon.png'),
                ),
              ),
            ),
            Container(
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Halo,',
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Kami ada 28.713 mobil di Carmudi.co.id',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: light,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }

      category() {
        categories(int index, String title, IconData icon) {
          return Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border(
                  right: index == 0 ? defaultBorder : BorderSide.none,
                  bottom: defaultBorder,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon),
                      SizedBox(width: 6),
                      Text(title),
                    ],
                  ),
                ],
              ),
            ),
          );
        }

        return Container(
          margin: EdgeInsets.only(top: 35),
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: whiteColor,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  categories(0, 'Mobil', Ionicons.car),
                  categories(1, 'Motor', Ionicons.bicycle),
                ],
              ),
              TextFormField(
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
                  hintStyle: greyTextStyle,
                  suffixIcon: Icon(Ionicons.search, color: greyColor),
                ),
              ),
            ],
          ),
        );
      }

      return Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: 240,
        color: primaryColor,
        child: Column(
          children: [
            profile(),
            category(),
          ],
        ),
      );
    }

    Widget carShow() {
      categories() {
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
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 100,
            width: double.infinity,
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

      carSentro() {
        return Container(
          margin: EdgeInsets.only(top: defaultMargin),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CarSentro(),
                CarSentro(),
                CarSentro(),
                CarSentro(),
                CarSentro(),
              ],
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 20, bottom: 80),
        child: Column(
          children: [
            categories(),
            carSentro(),
          ],
        ),
      );
    }

    return Container(
      color: bgColor,
      child: ListView(
        children: [
          header(),
          carShow(),
        ],
      ),
    );
  }
}
