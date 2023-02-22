
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CarPageWidet extends StatelessWidget {
  const CarPageWidet({
    Key? key,
    required this.icon,
    required this.name,
    required this.price,
  }) : super(key: key);
  final String price;
  final String icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Device.orientation == Orientation.portrait ? 10.h : 22.h,
      width: Device.orientation == Orientation.portrait ? 24.w : 13.w,
      child: Card(
        semanticContainer: true,
        margin: EdgeInsets.all(2),

        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.grey.shade200,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: .3.h,
            ),
            SvgPicture.asset(
              icon,
              fit: BoxFit.scaleDown,
              height: 4.h,
              width: 4.h,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 15.sp,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        // elevation: 5,
        // margin: EdgeInsets.all(10),
      ),
    );
  }
}