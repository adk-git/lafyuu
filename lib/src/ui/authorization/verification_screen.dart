import 'package:flutter/material.dart';
import 'package:lafyuu/src/settings/app_theme.dart';
import 'package:lafyuu/src/utils/utils.dart';
import 'package:lafyuu/src/widgets/authorization/forgot_password_field.dart';
import 'package:lafyuu/src/widgets/authorization/google_field.dart';
import 'package:lafyuu/src/widgets/authorization/or_field.dart';
import 'package:lafyuu/src/widgets/authorization/password_field.dart';
import 'package:lafyuu/src/widgets/authorization/sign_in.dart';
import '../../widgets/authorization/facebook_field.dart';
import '../../widgets/authorization/mail_field.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(height: 64 * h),
          Container(
            height: 72 * h,
            width: 72 * w,
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/logoBlue.png",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 16 * h),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Welcome to Lafyuu",
              style: TextStyle(
                fontSize: 16 * h,
                color: AppTheme.neutralColor,
                fontFamily: AppTheme.fontFamily,
                fontWeight: FontWeight.w700,
                height: 1.5 * h,
              ),
            ),
          ),
          SizedBox(height: 8 * h),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Sign in to continue",
              style: TextStyle(
                color: AppTheme.greyColor,
                fontFamily: AppTheme.fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 12 * h,
              ),
            ),
          ),
          SizedBox(height: 16 * h),
          const MailField(
            iconLink: "assets/icons/message.svg",
            textname: "Your Email",
          ),
          SizedBox(height: 8 * h),
          const PasswordField(
            nameIcon: "assets/icons/lock.svg",
            nameText: "Password",
          ),
          SizedBox(height: 16 * h),
          const SignIn(),
          SizedBox(height: 32 * h),
          const OrField(),
          SizedBox(height: 32 * h),
          const GoogleField(),
          SizedBox(height: 8 * h),
          const FacebookField(),
          SizedBox(height: 32 * h),
          const ForgotWidget()
        ],
      ),
    );
  }
}
