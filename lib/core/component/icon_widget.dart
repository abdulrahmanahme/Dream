
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class IconsWidget extends StatelessWidget {
  const IconsWidget({Key? key, this.color, this.image}) : super(key: key);
  final String? image;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 12.w,
        height: 11.h,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset(
            image!,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
