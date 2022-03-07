import 'package:flutter/material.dart';
import 'package:lafyuu/src/settings/app_theme.dart';
import 'package:lafyuu/src/utils/utils.dart';
import 'package:lafyuu/src/widgets/authorization/mail_field.dart';
import 'package:lafyuu/src/widgets/authorization/password_field.dart';
import 'package:lafyuu/src/widgets/authorization/sign_in.dart';
import 'package:lafyuu/src/widgets/registeration/have_a_account.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
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
              "Create an new account",
              style: TextStyle(
                color: AppTheme.greyColor,
                fontFamily: AppTheme.fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 12 * h,
              ),
            ),
          ),
          SizedBox(height: 32 * h),
          const MailField(
            textname: "Full Name",
            iconLink: "assets/icons/person.svg",
          ),
          SizedBox(height: 8 * h),
          const MailField(
            textname: "Your Email",
            iconLink: "assets/icons/message.svg",
          ),
          SizedBox(height: 8 * h),
          const PasswordField(
            nameText: "Password",
            nameIcon: "assets/icons/lock.svg",
          ),
          SizedBox(height: 8 * h),
          const PasswordField(
            nameText: "Password Again",
            nameIcon: "assets/icons/lock.svg",
          ),
          SizedBox(height: 16 * h),
          const SignIn(),
          SizedBox(height: 24 * h),
          const HaveAccount()
        ],
      ),
    );
  }
}
