import 'package:jual_mobil/ui/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitched = false;
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: secondaryColor,
        title: Text(
          'Profile',
          style: whiteTextStyle.copyWith(fontWeight: semiBold),
        ),
      );
    }

    Widget profile() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: whiteColor,
          border: Border(
            bottom: defaultBorder,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 95,
              width: 95,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/profile_icon.png'),
                ),
                shape: BoxShape.circle,
              ),
            ),
            Expanded(
              child: Text(
                'Login ke profil Anda untuk melihat Mobil Tersimpan, Pencarian dan Chat yang Disimpan',
                style: greyTextStyle.copyWith(fontSize: 13),
              ),
            ),
            SizedBox(width: 5),
          ],
        ),
      );
    }

    Widget signInButton() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 25),
        decoration: BoxDecoration(
          border: Border.symmetric(
            horizontal: defaultBorder,
          ),
        ),
        width: double.infinity,
        height: 60,
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: TextButton.styleFrom(
            backgroundColor: whiteColor,
          ),
          child: Text(
            'Sign In',
            style: yellowTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget listTile() {
      switch1() {
        beli(int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                isSelected = index;
                print(index);
              });
            },
            child: Container(
              alignment: Alignment.center,
              width: 40,
              height: 30,
              margin: EdgeInsets.only(),
              decoration: BoxDecoration(
                color: isSelected == index ? secondaryColor : switchColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                index == 0 ? 'Beli' : 'Jual',
                style: blackTextStyle.copyWith(
                  color: isSelected == index ? blackColor : greyColor,
                  fontWeight: medium,
                  fontSize: 11,
                ),
              ),
            ),
          );
        }

        return Container(
          height: 40,
          width: 90,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: switchColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              beli(0),
              beli(1),
            ],
          ),
        );
      }

      switch2() {
        return Switch(
          value: isSwitched,
          activeColor: secondaryColor,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
            });
          },
        );
      }

      text() {
        return Text(
          'Bahasa Indonesia',
          style: greyTextStyle.copyWith(
            color: greyColor.withOpacity(0.6),
          ),
        );
      }

      tileItems(int index, String text, Widget widget) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border(
                top: defaultBorder,
                bottom: index == 6 ? defaultBorder : BorderSide.none,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: greyTextStyle,
                ),
                widget
              ],
            ),
          ),
        );
      }

      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
        ),
        child: Column(
          children: [
            tileItems(0, 'Beralih ke Menjual', switch1()),
            tileItems(1, 'Pemberitahuan', switch2()),
            tileItems(2, 'Bahasa', text()),
            tileItems(
                3, 'Kebijakan privasi & Persyaratan penggunaan', SizedBox()),
            tileItems(4, 'Kirim kritik & Saran', SizedBox()),
            tileItems(5, 'Beri rating', SizedBox()),
            tileItems(6, 'Beri tahu ke teman', SizedBox()),
          ],
        ),
      );
    }

    Widget version() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 60, top: 20),
        width: double.infinity,
        height: 25,
        color: bgColor,
        child: Text(
          '5.7.4 (19)',
          style: greyTextStyle.copyWith(fontSize: 12),
        ),
      );
    }

    return Container(
      color: bgColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            profile(),
            signInButton(),
            listTile(),
            version(),
          ],
        ),
      ),
    );
  }
}
