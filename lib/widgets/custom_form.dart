import 'package:jual_mobil/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final String label;
  final String hint;
  final String imageUrl;
  final EdgeInsets margin;
  final bool visible;

  const CustomForm({
    Key? key,
    this.label = '',
    this.hint = '',
    this.imageUrl = '',
    this.margin = EdgeInsets.zero,
    this.visible = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        obscureText: visible,
        style: purpleTextStyle.copyWith(fontSize: 17),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: purpleTextStyle.copyWith(fontSize: 13),
          hintText: hint,
          suffixIcon: Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              width: 1,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                ),
              ),
              // child: Image.asset(
              //   imageUrl,
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
