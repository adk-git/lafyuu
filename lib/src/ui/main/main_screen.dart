import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lafyuu/src/settings/app_theme.dart';
import 'package:lafyuu/src/ui/main/account_screen/account_screen.dart';
import 'package:lafyuu/src/ui/main/cart_screen/cart_screen.dart';
import 'package:lafyuu/src/ui/main/explore_screen/explore_screen.dart';
import 'package:lafyuu/src/ui/main/home_screen/home_screen.dart';
import 'package:lafyuu/src/ui/main/offer_screen/offer_screen.dart';
import 'package:lafyuu/src/utils/utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = [
    const HomeScreen(),
    const ExploreScreen(),
    const CartScreen(),
    const OfferScreen(),
    const AccountScreen(),
  ];

  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.whiteColor,
        currentIndex: _selected,
        selectedLabelStyle: TextStyle(
          color: AppTheme.blueColor,
          fontSize: 12 * h,
          fontFamily: AppTheme.fontFamily,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5 * w,
        ),
        onTap: (int index) {
          setState(() {
            _selected = index;
          });
        },
        iconSize: 24 * h,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
            ),
            label: "Home",
            activeIcon: SvgPicture.asset(
              "assets/icons/home.svg",
              color: AppTheme.blueColor,
              width: 24 * w,
              height: 24 * h,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
            ),
            label: "Explore",
            activeIcon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: AppTheme.blueColor,
              height: 24 * h,
              width: 24 * w,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
            ),
            label: "Cart",
            activeIcon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: AppTheme.blueColor,
              height: 24 * h,
              width: 24 * w,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/offer.svg",
            ),
            label: "Offer",
            activeIcon: SvgPicture.asset(
              "assets/icons/offer.svg",
              color: AppTheme.blueColor,
              width: 24 * w,
              height: 24,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/person.svg",
            ),
            label: "Account",
            activeIcon: SvgPicture.asset(
              "assets/icons/person.svg",
              color: AppTheme.blueColor,
              height: 24 * h,
              width: 24 * w,
            ),
          ),
        ],
      ),
      body: pages[_selected],
    );
  }
}
