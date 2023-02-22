
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:taskdream/core/component/app_icons.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height:
              Device.orientation == Orientation.portrait ? 6.h : 15.h,
          width: Device.orientation == Orientation.portrait
              ? 89.w
              : 85.w,
          child: Card(
            semanticContainer: true,
            // margin: EdgeInsets.all(20),

            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: Color(0xffA55959),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  ' مكفوله حتى7000 كم',
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                SvgPicture.asset(
                  AppIcons.ad4,
                  fit: BoxFit.scaleDown,
                  color: Colors.white,
                  // height: 4.h,
                  // width: 4.h,
                ),
                SizedBox(
                  width: 5.w,
                ),
              ],
            ),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            // elevation: 5,
            // margin: EdgeInsets.all(10),
          ),
        ),
      ],
    );
  }
}