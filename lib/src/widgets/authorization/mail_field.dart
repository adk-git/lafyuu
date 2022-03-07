import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lafyuu/src/settings/app_theme.dart';
import 'package:lafyuu/src/utils/utils.dart';

class MailField extends StatefulWidget {
  final String textname;
  final String iconLink;

  const MailField({
    Key? key,
    required this.textname,
    required this.iconLink,
  }) : super(key: key);

  @override
  _MailFieldState createState() => _MailFieldState();
}

class _MailFieldState extends State<MailField> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16 * w),
      height: 48 * h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppTheme.whiteColor,
        border: Border.all(color: const Color(0xFFEBF0FF), width: 1.5 * h),
        borderRadius: BorderRadius.circular(8 * h),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(16 * w, 0, 12 * w, 0),
            child: Center(
              child: SvgPicture.asset(
                widget.iconLink,
                height: 20 * h,
                width: 20 * w,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: AppTheme.greyColor,
                fontFamily: AppTheme.fontFamily,
                fontWeight: FontWeight.w700,
                fontSize: 14 * h,
                height: 1.8 * h,
                letterSpacing: 0.5 * w,
              ),
              decoration: InputDecoration(
                hintText: widget.textname,
                hintStyle: TextStyle(
                  color: AppTheme.greyColor,
                  fontFamily: AppTheme.fontFamily,
                  fontWeight: FontWeight.w400,
                  fontSize: 12 * h,
                  height: 1.8 * h,
                  letterSpacing: 0.5 * w,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
