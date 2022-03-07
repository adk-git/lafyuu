import 'package:flutter/cupertino.dart';
import 'package:lafyuu/src/settings/app_theme.dart';
import 'package:lafyuu/src/utils/utils.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

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
          color: AppTheme.blueColor,
          borderRadius: BorderRadius.circular(8 * w),
          boxShadow: [
            BoxShadow(
              blurRadius: 4 * w,
              color: AppTheme.blueColor,
            ),
          ],
        ),
        child: Center(
          child: Text(
            "Sign In",
            style: TextStyle(
              color: AppTheme.whiteColor,
              fontFamily: AppTheme.fontFamily,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5 * w,
              fontSize: 16 * h,
              height: 1.8 * h,
            ),
          ),
        ),
      ),
    );
  }
}
