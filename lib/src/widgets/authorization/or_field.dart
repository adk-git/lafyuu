import 'package:flutter/cupertino.dart';
import 'package:lafyuu/src/utils/utils.dart';

import '../../settings/app_theme.dart';

class OrField extends StatelessWidget {
  const OrField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 16 * w),
          height: 2 * h,
          width: 134 * w,
          color: const Color(0xFFEBF0FF),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24 * w),
          child: Text(
            "OR",
            style: TextStyle(
              color: AppTheme.greyColor,
              height: 1.5 * h,
              fontSize: 14 * h,
              fontFamily: AppTheme.fontFamily,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5 * w,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 16 * w),
          height: 2 * h,
          width: 134 * w,
          color: const Color(0xFFEBF0FF),
        ),
      ],
    );

  }
}
