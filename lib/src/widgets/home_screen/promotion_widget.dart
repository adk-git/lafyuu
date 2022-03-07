import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lafyuu/src/settings/app_theme.dart';
import 'package:lafyuu/src/utils/utils.dart';

class PromotionWidget extends StatefulWidget {
  const PromotionWidget({Key? key}) : super(key: key);

  @override
  State<PromotionWidget> createState() => _PromotionWidgetState();
}

class _PromotionWidgetState extends State<PromotionWidget> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(16 * h),
          height: 208 * h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8 * w),
          ),
          child: Image.asset(
            "assets/images/promotion.png",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          height: 72 * h,
          width: 220 * w,
          margin: EdgeInsets.fromLTRB(32 * w, 24 * h, 0, 0),
          child: Text(
            "Super Flash Sale 50% Off",
            style: TextStyle(
              color: AppTheme.whiteColor,
              fontSize: 24 * h,
              fontFamily: AppTheme.fontFamily,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5 * w,
            ),
            maxLines: 2,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(32 * w, 150 * h, 0, 0),
          child: Row(
            children: [
              Container(
                height: 42 * h,
                width: 42 * w,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: AppTheme.whiteColor,
                  borderRadius: BorderRadius.circular(8 * w),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4 * w),
                child: SvgPicture.asset(
                  "assets/icons/twoPoint.svg",
                  width: 4 * w,
                  height: 20 * h,
                ),
              ),
              Container(
                height: 42 * h,
                width: 42 * w,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: AppTheme.whiteColor,
                  borderRadius: BorderRadius.circular(8 * w),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4 * w),
                child: SvgPicture.asset(
                  "assets/icons/twoPoint.svg",
                  width: 4 * w,
                  height: 20 * h,
                ),
              ),
              Container(
                height: 42 * h,
                width: 42 * w,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: AppTheme.whiteColor,
                  borderRadius: BorderRadius.circular(8 * w),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
