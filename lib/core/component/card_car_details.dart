
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class CardCarDetails extends StatelessWidget {
  const CardCarDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height:
              Device.orientation == Orientation.portrait ? 7.h : 15.h,
          width: Device.orientation == Orientation.portrait
              ? 95.w
              : 85.w,
          child: Card(
            semanticContainer: true,
            // margin: EdgeInsets.all(20),

            clipBehavior: Clip.antiAliasWithSaveLayer,
            // color: Color(0xffF7F7FD),
            // color: Colors.white30,
            color: Color(0xffEDF1F3),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'كل السيارات',
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: Device.orientation == Orientation.portrait
                      ? 10.w
                      : 30.w,
                ),
                Text(
                  'يوكن للسارة المعتمدة',
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 4.w,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                      radius: 16.0,
                      backgroundColor: Color(0xffEFEFEF),
                      backgroundImage:
                          AssetImage('assets/images/Image 1.png')),
                ),
                SizedBox(
                  width: 4.w,
                ),
              ],
            ),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            // elevation: 5,
            // margin: EdgeInsets.all(10),
          ),
        ),
      ],
    );
  }
}