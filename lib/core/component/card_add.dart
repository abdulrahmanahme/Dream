
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Cardadd extends StatelessWidget {
  const Cardadd({
   required this.icon,
    required this.name,
    required this.price,
    Key? key,
  }) : super(key: key);
  final String price;
  final String icon;
  final String name;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        height: Device.orientation == Orientation.portrait ? 9.h : 20.h,
        width: Device.orientation == Orientation.portrait ? 11.5.w : 10.w,
        child: Card(
          semanticContainer: true,
          margin: EdgeInsets.all(1),

          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Colors.grey.shade200,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              SizedBox(
                height: .3.h,
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: SvgPicture.asset(icon,
                    fit: BoxFit.scaleDown),
              ),
              Text(
               name,
                style: TextStyle(
                  fontSize: 13.sp,
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
      ),
    );
  }
}