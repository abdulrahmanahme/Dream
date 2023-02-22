
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    this.onPressed,
    this.name,
  }) : super(key: key);
 final void Function()? onPressed;
 final String ?name;

  @override
  Widget build(BuildContext context) {
    return Container(
         width: 30.w,
         height:Device.orientation == Orientation.portrait? 4.6.h:10.h,
          //  margin: const EdgeInsets.only(bottom: 5),

         child: ElevatedButton(
          
           style: ElevatedButton.styleFrom(
            
             primary: Color(0XFF42455C),
            //  padding: EdgeInsets.only(
            //      top: .2.h, bottom: .1.h, left: .2.w, right: .2.w),
            //  elevation: 2,
             shape: RoundedRectangleBorder(
              
               borderRadius: BorderRadius.circular(25),
             ),
           ),
           child: Center(
             child: Padding(
               padding: const EdgeInsets.all(2.0),
               child: Text(
                 name!,
                 
                 style: TextStyle(
                   fontSize: 19.sp,
                   fontWeight: FontWeight.w400,
                   color: Colors.white,
                 ),
               ),
             ),
           ),
           onPressed:onPressed,
         ),
       );
  }
}