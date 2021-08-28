import 'package:jual_mobil/ui/pages/sign_up_page.dart';
import 'package:jual_mobil/ui/shared/theme.dart';
import 'package:jual_mobil/ui/widgets/custom_button.dart';
import 'package:jual_mobil/ui/widgets/custom_form.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: 327,
        height: 247,
        margin: EdgeInsets.only(left: 100),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/form/ilustration1.png'),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sign In',
                  style: purpleTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: bold,
                  ),
                ),
                CustomButtom(
                  isSkip: true,
                  text: 'SKIP',
                  width: 90,
                ),
              ],
            ),

            // NOTE : Form
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
              child: Text(
                'Forgot Password?',
                style: purpleTextStyle.copyWith(
                  color: purpleColor.withOpacity(0.6),
                  fontSize: 13,
                  fontWeight: medium,
                ),
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
                    'Or Sign In With',
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Newbie? ',
                      style: purpleTextStyle.copyWith(
                        color: purpleColor.withOpacity(0.6),
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      'Create Account',
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
