import 'package:jual_mobil/shared/theme.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class DropDownTile extends StatefulWidget {
  final int index;
  final String hint;

  const DropDownTile({
    Key? key,
    required this.index,
    this.hint = '',
  }) : super(key: key);

  @override
  _DropDownTileState createState() => _DropDownTileState();
}

class _DropDownTileState extends State<DropDownTile> {
  final List<String> merek = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
  ];

  var a;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownSearch<String>(
        mode: Mode.BOTTOM_SHEET,
        showClearButton: true,
        showSelectedItem: true,
        items: merek,
        hint: widget.hint,
        clearButton: Icon(
          Ionicons.close_circle_outline,
          color: greyColor,
          size: 20,
        ),
        popupTitle: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 15, top: 20),
          height: 50,
          child: Scaffold(
            body: Text(
              '${widget.hint} :',
              style: blackTextStyle,
            ),
          ),
        ),
        dropDownButton: Icon(
          Ionicons.chevron_down_circle_outline,
          color: greyColor,
          size: 20,
        ),
        onChanged: print,
        selectedItem: a,
      ),
    );
  }
}
