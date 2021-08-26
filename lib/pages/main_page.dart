import 'package:jual_mobil/pages/home_page.dart';
import 'package:jual_mobil/pages/inbox_page.dart';
import 'package:jual_mobil/pages/profile_page.dart';
import 'package:jual_mobil/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // void showAlert(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       content: Text("Welcome"),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration.zero, () => showAlert(context));
    Widget customNavbar() {
      navbarItem(int index, IconData iconName, String label) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _currentIndex = index;
            });
          },
          child: Column(
            children: [
              Icon(
                iconName,
                color: _currentIndex == index ? primaryColor : unselectedColor,
              ),
              SizedBox(height: 2),
              Text(
                label,
                style: blueTextStyle.copyWith(
                  color:
                      _currentIndex == index ? primaryColor : unselectedColor,
                  fontSize: _currentIndex == index ? 13 : 12,
                ),
              ),
            ],
          ),
        );
      }

      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 7),
            decoration: BoxDecoration(
              color: whiteColor,
              border: Border(top: defaultBorder),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                navbarItem(0, Ionicons.search_outline, 'Explore'),
                navbarItem(1, Ionicons.notifications_outline, 'Inbox'),
                navbarItem(2, Ionicons.person_outline, 'Profile'),
              ],
            ),
          ),
        ],
      );
    }

    Widget pageView() {
      switch (_currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return InboxPage();
        case 2:
          return ProfilePage();

        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          pageView(),
          customNavbar(),
        ],
      ),
    );
  }
}
