import 'package:flutter/material.dart';
import 'package:lafyuu/src/settings/app_theme.dart';
import 'package:lafyuu/src/utils/utils.dart';

// ignore: must_be_immutable
class TwoWordsWidget extends StatefulWidget {
  final String leftName;
  final String rightName;
  Function onTapNext;

   TwoWordsWidget({
    Key? key,
    required this.leftName,
    required this.rightName,
    required this.onTapNext,
  }) : super(key: key);

  @override
  State<TwoWordsWidget> createState() => _TwoWordsWidgetState();
}

class _TwoWordsWidgetState extends State<TwoWordsWidget> {


  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16 * w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.leftName,
            style: TextStyle(
              color: AppTheme.neutralColor,
              fontSize: 16 * h,
              fontFamily: AppTheme.fontFamily,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5 * w,
              height: 1.5 * h,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => widget.onTapNext(),
            child: Text(
              widget.rightName,
              style: TextStyle(
                color: AppTheme.blueColor,
                fontSize: 16 * h,
                fontFamily: AppTheme.fontFamily,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5 * w,
                height: 1.5 * h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
