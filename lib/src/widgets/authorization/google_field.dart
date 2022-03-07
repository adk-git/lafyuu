import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lafyuu/src/settings/app_theme.dart';
import 'package:lafyuu/src/utils/utils.dart';

class GoogleField extends StatelessWidget {
  const GoogleField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16 * w),
        height: 56 * h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppTheme.whiteColor,
          borderRadius: BorderRadius.circular(8 * h),
          border: Border.all(
            color: const Color(0xFFEBF0FF),
            width: 2 * w,
          ),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 16 * w),
              child: Center(
                child: SvgPicture.asset(
                  "assets/icons/google.svg",
                  height: 30 * h,
                  width: 30 * w,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(12 * h),
                  child: Text(
                    "Login with Google",
                    style: TextStyle(
                      color: AppTheme.greyColor,
                      fontFamily: AppTheme.fontFamily,
                      fontWeight: FontWeight.w700,
                      height: 1.8 * h,
                      letterSpacing: 0.5 * w,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
