import 'package:jual_mobil/ui/shared/theme.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        title: Text(
          'Inbox',
          style: whiteTextStyle.copyWith(fontWeight: semiBold),
        ),
      );
    }

    Widget emptyInbox() {
      return Expanded(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset(
                'assets/empty_inbox.png',
                width: 300,
                height: 300,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 130),
                child: Column(
                  children: [
                    Text(
                      'No New Notifications',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Your activity notification\nwill be displayed here',
                      style: greyTextStyle.copyWith(fontSize: 16),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Looking For Notifications? ',
                    style: greyTextStyle,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Sign In',
                      style: blueTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Text(
                    ' To Carmudi',
                    style: greyTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        emptyInbox(),
      ],
    );
  }
}
