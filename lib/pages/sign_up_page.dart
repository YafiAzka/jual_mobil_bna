import 'package:jual_mobil/shared/theme.dart';
import 'package:jual_mobil/widgets/custom_button.dart';
import 'package:jual_mobil/widgets/custom_form.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: 327,
        height: 247,
        margin: EdgeInsets.only(right: 150),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/form/ilustration2.png'),
            alignment: Alignment.topRight,
          ),
        ),
      );
    }

    Widget form() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 36, vertical: 30),
        margin: EdgeInsets.only(top: 200),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(32),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Sign Up',
              style: purpleTextStyle.copyWith(
                fontSize: 32,
                fontWeight: bold,
              ),
            ),

            // NOTE : Form
            CustomForm(
              label: 'Name',
              hint: 'Enter Your Name',
              imageUrl: 'assets/form/check_icon.png',
              margin: EdgeInsets.only(top: 32),
            ),
            CustomForm(
              label: 'Email',
              hint: 'Enter Email',
              imageUrl: 'assets/form/check_icon.png',
              margin: EdgeInsets.only(top: 32),
            ),
            CustomForm(
              label: 'Password',
              hint: 'Enter Password',
              imageUrl: 'assets/form/eye_icon.png',
              visible: true,
              margin: EdgeInsets.only(top: 32),
            ),

            // NOTE : Forgot Button
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              alignment: Alignment.topRight,
              child: Row(
                children: [
                  Text(
                    'Yes, I agree to the ',
                    style: purpleTextStyle.copyWith(
                      color: purpleColor.withOpacity(0.6),
                      fontSize: 13,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Terms & Services.',
                    style: purpleTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            // NOTE : Custom Button
            CustomButtom(
              text: 'PROCEED',
            ),

            // NOTE : Another Login
            Container(
              margin: EdgeInsets.only(top: 32),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'Or Sign Up With',
                    style: purpleTextStyle.copyWith(
                      color: purpleColor.withOpacity(0.6),
                      fontSize: 13,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/form/google_icon.png', width: 64),
                      Image.asset('assets/form/facebook_icon.png', width: 64),
                      Image.asset('assets/form/apple_icon.png', width: 64),
                    ],
                  ),
                ],
              ),
            ),

            // NOTE : Sign Up
            Container(
              margin: EdgeInsets.only(top: 28, bottom: 39),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Existing User? ',
                      style: purpleTextStyle.copyWith(
                        color: purpleColor.withOpacity(0.6),
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      'Sign In',
                      style: purpleTextStyle.copyWith(
                        color: purpleColor,
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: purpleColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              header(),
              form(),
            ],
          ),
        ),
      ),
    );
  }
}
