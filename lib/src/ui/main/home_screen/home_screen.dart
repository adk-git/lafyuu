import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lafyuu/src/settings/app_theme.dart';
import 'package:lafyuu/src/ui/authorization/register_screen.dart';
import 'package:lafyuu/src/utils/utils.dart';
import 'package:lafyuu/src/widgets/home_screen/line_widget.dart';
import 'package:lafyuu/src/widgets/home_screen/promotion_widget.dart';
import 'package:lafyuu/src/widgets/home_screen/search_widget.dart';
import 'package:lafyuu/src/widgets/home_screen/two_words.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(height: 16 * h),
          Row(
            children: [
              const SearchWidget(),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/heart.svg",
                  height: 24 * h,
                  width: 24 * w,
                  fit: BoxFit.contain,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/notification.svg",
                  height: 24 * h,
                  width: 24 * w,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          SizedBox(height: 16 * h),
          const LineWidget(),
          const PromotionWidget(),
          SizedBox(height: 16 * h),
          Center(
            child: Container(
              height: 8 * h,
              width: 72 * w,
              color: AppTheme.neutralColor,
            ),
          ),
          SizedBox(height: 24 * h),
          TwoWordsWidget(
            leftName: "Category",
            rightName: "More category",
            onTapNext: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
