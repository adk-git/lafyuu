import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lafyuu/src/settings/app_theme.dart';
import 'package:lafyuu/src/utils/utils.dart';

class PasswordField extends StatefulWidget {
  final String nameText;
  final String nameIcon;

  const PasswordField({
    Key? key,
    required this.nameText,
    required this.nameIcon,
  }) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16 * w),
      height: 48 * h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFEBF0FF), width: 1.5 * h),
        borderRadius: BorderRadius.circular(8 * h),
        color: AppTheme.whiteColor,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(16 * w, 0, 12 * w, 0),
            child: Center(
              child: SvgPicture.asset(
                widget.nameIcon,
                fit: BoxFit.cover,
                height: 18 * h,
                width: 18 * w,
              ),
            ),
          ),
          Expanded(
            child: TextFormField(
              style: TextStyle(
                color: AppTheme.greyColor,
                fontSize: 14 * h,
                fontFamily: AppTheme.fontFamily,
                fontWeight: FontWeight.w700,
                height: 1.8 * h,
                letterSpacing: 0.5 * w,
              ),
              decoration: InputDecoration(
                hintText: widget.nameText,
                hintStyle: TextStyle(
                  color: AppTheme.greyColor,
                  fontSize: 12 * h,
                  height: 1.8 * h,
                  fontFamily: AppTheme.fontFamily,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5 * w,
                ),
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.number,
            ),
          ),
        ],
      ),
    );
  }
}
