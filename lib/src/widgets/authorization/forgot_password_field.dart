import 'package:flutter/material.dart';
import 'package:lafyuu/src/settings/app_theme.dart';
import 'package:lafyuu/src/utils/utils.dart';
import '../../ui/authorization/register_screen.dart';

class ForgotWidget extends StatefulWidget {
  const ForgotWidget({Key? key}) : super(key: key);

  @override
  State<ForgotWidget> createState() => _ForgotWidgetState();
}

class _ForgotWidgetState extends State<ForgotWidget> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: Text(
            "Forgot Password?",
            style: TextStyle(
              color: AppTheme.blueColor,
              fontSize: 14 * h,
              letterSpacing: 0.5 * w,
              fontFamily: AppTheme.fontFamily,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: 8 * h),
        Row(
          children: [
            Text(
              "Don’t have a account? ",
              style: TextStyle(
                color: AppTheme.greyColor,
                fontSize: 14 * h,
                fontFamily: AppTheme.fontFamily,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5 * w,
              ),
            ),
            SizedBox(width: 2 * w),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const RegisterScreen();
                    },
                  ),
                );
              },
              child: Text(
                "Register",
                style: TextStyle(
                  color: AppTheme.blueColor,
                  fontSize: 14 * h,
                  letterSpacing: 0.5 * w,
                  fontFamily: AppTheme.fontFamily,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )
      ],
    );
  }
}
