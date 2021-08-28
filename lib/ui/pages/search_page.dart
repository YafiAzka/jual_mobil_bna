import 'package:jual_mobil/ui/shared/theme.dart';
import 'package:jual_mobil/ui/widgets/drop_down_tile.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: whiteColor,
        iconTheme: IconThemeData(color: greyColor),
        elevation: 0,
        title: TextFormField(
          autofocus: false,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: primaryColor),
            ),
            suffixIcon: Icon(
              Ionicons.search_outline,
              color: greyColor,
            ),
            hintText: 'Cari Mobil',
            hintStyle: greyTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 20,
            ),
            border: InputBorder.none,
          ),
        ),
      );
    }

    Widget chooseModel() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Merk & Model',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
            SizedBox(height: 10),
            DropDownTile(
              index: 0,
              hint: 'Pilih Merek',
            ),
            DropDownTile(
              index: 1,
              hint: 'Pilih Model',
            ),
            SizedBox(height: 30),
            //
            Text(
              'Kondisi',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
            SizedBox(height: 10),
            DropDownTile(
              index: 2,
              hint: 'Pilih Kondisi',
            ),
            SizedBox(height: 30),
            //
            Text(
              'Kondisi',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
            SizedBox(height: 10),
            DropDownTile(
              index: 3,
              hint: 'Pilih Lokasi',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            chooseModel(),
          ],
        ),
      ),
    );
  }
}
