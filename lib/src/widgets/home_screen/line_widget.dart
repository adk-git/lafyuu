import 'package:flutter/material.dart';
import 'package:lafyuu/src/utils/utils.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);

    return Container(
      width: double.infinity,
      height: 1 * h,
      decoration: const BoxDecoration(
        color: Color(0xFFEBF0FF),
      ),
    );
  }
}
