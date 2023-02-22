
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:taskdream/core/component/app_icons.dart';
import 'package:taskdream/core/component/card_add.dart';
import 'package:taskdream/model/car_image_model.dart';
import 'package:taskdream/view/car_page.dart';
import 'package:taskdream/view/home_screen.dart';

class CarWidget extends StatelessWidget {
  const CarWidget({
    Key? key,
    this.model,
  }) : super(key: key);
 final CarImage ?model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: ((context) => const CarPage() )));
      }),
      child: Container(
        height:Device.orientation == Orientation.portrait ? 10.h : 60.h,
        width: Device.orientation == Orientation.portrait ? 65.w : 40.w,
        // color: Colors.amber,
        child: Stack(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
                  children: [
                    Container(
                      height: Device.orientation == Orientation.portrait
                          ? 15.h
                          : 40.h,
                      // height: 20.h,
                      width: Device.orientation == Orientation.portrait
                          ? 50.w
                          : 40.w,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset(
                          model!.image,
                          fit: BoxFit.fill,
                        ),
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(10.0),
                        // ),
                        // elevation: 5,
                        // margin: EdgeInsets.all(10),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: Device.orientation == Orientation.portrait
                      ? 3.h
                      : 8.h,
                  width: 60.w,
                  color: Colors.white54,
                  child: Center(
                    child: Text(
                      '    جى ام سى | يوكن | الفئة الرابعة',
                      style: TextStyle(
                        fontSize: 17.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Directionality(
            textDirection: TextDirection.rtl,
              
              child: Positioned(
                top: 90,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Cardadd(
                      name: 'السعر',
                      price: '1270',
                      icon: AppIcons.price,
                    ),
                    Cardadd(
                        name: 'سنة الصنع',
                      price: '2019',
                      icon: AppIcons.ad2,
                    ),
                    Cardadd(
                        name: 'كم',
                      price: '2000',
                      icon: AppIcons.ad3,
                    ),
                    Cardadd(
                        name: 'مكفوله ل',
                      price: '2021',
                      icon: AppIcons.ad4,
                    ),
                    // Cardadd(),
                    // Cardadd(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}