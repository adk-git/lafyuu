import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lafyuu/src/settings/app_theme.dart';
import 'package:lafyuu/src/utils/utils.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Container(
      height: 50 * h,
      width: 260 * w,
      padding: EdgeInsets.only(right: 16 * w),
      margin: EdgeInsets.only(left: 16 * w),
      decoration: BoxDecoration(
        color: AppTheme.whiteColor,
        borderRadius: BorderRadius.circular(8 * w),
        border: Border.all(
          color: const Color(0xFFEBF0FF),
          width: 1 * w,
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: AppTheme.blueColor,
              height: 16 * h,
              width: 16 * w,
            ),
          ),
          // SizedBox(width: 8 * w),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search Product",
                hintStyle: TextStyle(
                  color: AppTheme.neutralColor,
                  fontSize: 12 * h,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppTheme.fontFamily,
                  letterSpacing: 0.5 * w,
                ),
                border: InputBorder.none,

              ),
              keyboardType: TextInputType.text,
            ),
          ),
        ],
      ),
    );
  }
}
