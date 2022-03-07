import 'package:flutter/material.dart';
import 'package:lafyuu/src/utils/utils.dart';
import '../../settings/app_theme.dart';
import '../../ui/authorization/verification_screen.dart';

class HaveAccount extends StatefulWidget {
  const HaveAccount({Key? key}) : super(key: key);

  @override
  State<HaveAccount> createState() => _HaveAccountState();
}

class _HaveAccountState extends State<HaveAccount> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Have a account?",
          style: TextStyle(
            color: AppTheme.greyColor,
            fontSize: 14 * h,
            fontFamily: AppTheme.fontFamily,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5 * w,
            height: 1.5 * h,
          ),
        ),
        SizedBox(width: 4 * w),
        GestureDetector(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const VerificationScreen();
                },
              ),
            );
          },
          child: Text(
            "Sign In",
            style: TextStyle(
              color: AppTheme.blueColor,
              fontSize: 14 * h,
              fontFamily: AppTheme.fontFamily,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5 * w,
            ),
          ),
        )
      ],
    );
  }
}
