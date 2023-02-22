
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:taskdream/core/component/app_icons.dart';

class ButtonLocation extends StatelessWidget {
  const ButtonLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
         width: 34.w,
         height:Device.orientation == Orientation.portrait? 5.h:10.h,
          //  margin: const EdgeInsets.only(bottom: 5),

         child: ElevatedButton(
          
           style: ElevatedButton.styleFrom(
            
             primary: Color(0XFF42455C),
            
             shape: RoundedRectangleBorder(
              
    borderRadius: BorderRadius.circular(25),
             ),
           ),
          //  Color(0xff50536C)
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

             children: [
              
              Text(
          'موقع السيارة',
          
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        
      ),
       SizedBox(
width: 1.h,
     ),
     Icon(Icons.location_on_outlined,
     size: 17,)
            //      SvgPicture.asset(
            // AppIcons.location,
            //   fit: BoxFit.scaleDown,
            //   // color: Colors.white,
            //   height: 2.h,
            //   width: 2.h,
            // ),
    
             ],
           ),
           onPressed:(){},
         ),
       );
  }
}