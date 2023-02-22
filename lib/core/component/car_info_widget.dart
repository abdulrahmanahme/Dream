import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:taskdream/core/component/app_icons.dart';

class CarInformtionWidget extends StatelessWidget {
  const CarInformtionWidget({
    Key? key,
   required this.icon,
    required this.name1,
    required this.name2,
  }) : super(key: key);
  final String name1;
  final String name2;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
    children: [
     Container(
      height: Device.orientation == Orientation.portrait ? 5.h : 12.h,
      width: Device.orientation == Orientation.portrait ? 89.w :85.w,
      child: Card(
        semanticContainer: true,
        margin: EdgeInsets.all(1),
        

        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Color(0xffF7F7FD),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             SizedBox(
       width: 10.w,
      ),
            Text(
              name1,
       
        
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
       SizedBox(
       width: 20.w,
      ),
             Text(
              name2,
      
        
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
     
      SizedBox(
       width: 5.w,
      ),
           
      
       SvgPicture.asset(
            icon,
              fit: BoxFit.scaleDown,
              color: Colors.black,
              // height: 4.h,
              // width: 4.h,
            ),
            SizedBox(
       width: 5.w,
      ),
          ],
        ),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        // elevation: 5,
        // margin: EdgeInsets.all(10),
      ),
    ),
     
    ],
               );
  }
}