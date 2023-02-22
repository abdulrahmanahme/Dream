
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:taskdream/core/component/app_icons.dart';

class BorderButton extends StatelessWidget {
  const BorderButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
         width: Device.orientation == Orientation.portrait?34.w:30.w,
         height:Device.orientation == Orientation.portrait? 5.h:10.h,
          //  margin: const EdgeInsets.only(bottom: 5),

         child: ElevatedButton(
          
           style: ElevatedButton.styleFrom(
            
             primary: Colors.white,
          
             shape: RoundedRectangleBorder(
               side: BorderSide(color:Color(0XFF42455C), width: 1),
                   borderRadius: BorderRadius.circular(25),
             ),
           ),
          //  Color(0xff50536C)
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
              
              Text(
                         'احجز السيارة',
                         
                         style: TextStyle(
                           fontSize: 15.sp,
                           fontWeight: FontWeight.w400,
                           color: Colors.black,
                         ),
                       
                     ),
                      SizedBox(
width:2.w,
                    ),
                    
                   
                 SvgPicture.asset(
            AppIcons.book,
              fit: BoxFit.scaleDown,
              // color: Colors.white,
              height: 3.h,
              width: 3.h,
            ),
                   
             ],
           ),
           onPressed:(){},
         ),
       );
  }
}