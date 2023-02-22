import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:taskdream/core/component/app_icons.dart';
import 'package:taskdream/core/component/border_button.dart';
import 'package:taskdream/core/component/button_location.dart';
import 'package:taskdream/core/component/car_info_widget.dart';
import 'package:taskdream/core/component/card_car_details.dart';
import 'package:taskdream/core/component/card_details.dart';
import 'package:taskdream/core/component/cart_page_widget.dart';
import 'package:taskdream/core/component/cart_widget.dart';
import 'package:taskdream/core/component/icon_widget.dart';
import 'package:taskdream/core/dummy/cart_image_data.dart';

class CarPage extends StatelessWidget {
  const CarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height:
                    Device.orientation == Orientation.portrait ? 33.h : 60.h,
                
                width: double.infinity,
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
                                  ? 25.h
                                  : 40.h,
                              // height: 20.h,
                              width: double.infinity,
                              child: Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset(
                                  'assets/images/Image 6.png',
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                // elevation: 5,
                                // margin: EdgeInsets.all(10),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconsWidget(
                              image: AppIcons.fav,
                              color: Colors.grey.shade400,
                            ),
                            IconsWidget(
                              image: AppIcons.share,
                              color: Colors.grey.shade400,
                            ),
                            Spacer(),
                            IconsWidget(
                              image: AppIcons.back,
                              color: Colors.grey.shade400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Positioned(
                        top: Device.orientation == Orientation.portrait
                            ? 170
                            : 120,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            //
                            CarPageWidet(
                              icon: AppIcons.slinder,
                              name: 'المحرك/سلندر',
                              price: '6',
                            ),
                            CarPageWidet(
                              icon: AppIcons.ad2,
                              name: 'سنة الصنع',
                              price: '2019',
                            ),
                            CarPageWidet(
                              icon: AppIcons.ad3,
                              name: 'سنة الصنع',
                              price: '2000',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ك.د  ',
                    style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '8,700',
                    style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    'يكون بحالة جيدة',
                    style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            const  CardDetails(),
              const CarInformtionWidget(
                icon: AppIcons.price,
                name1: 'ابيض',
                name2: 'اللون الخارجى',
              ),
              const CarInformtionWidget(
                icon: AppIcons.ad4,
                name1: 'بيج    ',
                name2: 'اللون الداحلى',
              ),
              const CarInformtionWidget(
                icon: AppIcons.ad3,
                name1: '  مخمل     ',
                name2: 'نوع المقعد',
              ),
              const CarInformtionWidget(
                icon: AppIcons.price,
                name1: 'ابيض ',
                name2: 'اللون الخارجى',
              ),
              const CarInformtionWidget(
                icon: AppIcons.ad3,
                name1: ' ✓',
                name2: 'فتحة سقف',
              ),
              const CarInformtionWidget(
                icon: AppIcons.ad4,
                name1: ' ✓',
                name2: 'كميرا خلفية',
              ),
              const CarInformtionWidget(
                icon: AppIcons.ad2,
                name1: ' امامى- خلفى',
                name2: 'سينسر',
              ),

              const CarInformtionWidget(
                icon: AppIcons.ad2,
                name1: 'اوتماتيك',
                name2: 'ناقل للحركة',
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    " رنجات المنيوم ١٨ انش اسود وكروم - ديكور خشب + كروم مقعد السائق کهربانی ، دواسات جانبية - تحكم بالمقود مع تعديل يدوي F1 - نظام المرتفعات - سات بريك كهربائي - مراة داخليك اوتو. Traction off - USB - شاحن كهربائي - ۷ مقاعد الخلفي",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
          const    CardCarDetails(),
           Container(
                height:
                     20.h ,
                width: double.infinity,
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 8.0,
                    children: List.generate(2, (index) {
                      return 
                        CarWidget(
                            model: carImage[index],
                          );
                        
                      
                    })),
              ),
      
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BorderButton(),
                  ButtonLocation(),
                  IconsWidget(
                    image: AppIcons.chat,
                    color: Color(0xffEEEEFF),
                  ),
                  IconsWidget(
                    image: AppIcons.call,
                    color: Color(0xffE9F4EA),
                  ),
                ],
              ),

              // EEEEFF
              // E9F4EA
            ],
          ),
        ),
      ),
    );
  }
}




