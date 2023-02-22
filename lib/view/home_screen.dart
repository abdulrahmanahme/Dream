import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:taskdream/core/component/bell_widget.dart';
import 'package:taskdream/core/component/button.dart';
import 'package:taskdream/core/component/cart_widget.dart';
import 'package:taskdream/core/component/text_form_field.dart';
import 'package:taskdream/core/component/widgets.dart';
import '../core/component/app_icons.dart';
import '../core/dummy/cart_image_data.dart';
import '../core/dummy/story_data.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var controllerEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff6A6C7D).withOpacity(.8),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
              child: SvgPicture.asset(AppIcons.menu,
                  color: Colors.white, fit: BoxFit.scaleDown),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, top: 12),
            child: const BellWidget(),
          ),

          //,) ,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 1.h,
              ),

              SizedBox(
                // width: double.infinity,
                height: 115,
                child: Center(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => StoryIcon(
                      model: storyData[index],
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 2.w,
                    ),
                    itemCount: storyData.length,
                  ),
                ),
              ),

              SizedBox(
                height:
                    Device.orientation == Orientation.portrait ? 25.h : 50.h,
                width: Device.orientation == Orientation.portrait
                    ? double.infinity
                    : double.infinity,
                child: Card(
                  // semanticContainer: true,

                  // clipBehavior: Clip.antiAliasWithSaveLayer,

                  child: Image.asset(
                    'assets/images/Image 6.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              TextFormFieldWidget(
                controller: controllerEmail,
                labeText: 'ابحث عن سيارتك',
                hintText: 'ابحث عن سيارتك',
                validationText: 'الرجاء ادخال اسم السياره',
                // suffixIcon: Icon(Icons.visibility_outlined),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(3.w),
                  child: SvgPicture.asset(
                    AppIcons.search,
                    color: Colors.grey[700],
                    fit: BoxFit.scaleDown,
                    height: Device.orientation == Orientation.portrait
                        ? .5.h
                        : 5.6.h,
                    width:
                        Device.orientation == Orientation.portrait ? .5.w : 5.w,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button(
                    name: 'أمريكى',
                    onPressed: (() {}),
                  ),
                  Button(
                    name: 'أوروبى',
                    onPressed: (() {}),
                  ),
                  Button(
                    name: 'أسيوى',
                    onPressed: (() {}),
                  ),
                ],
              ),

              SizedBox(
                height: 2.h,
              ),

              Container(
                height: 45.h,
                width: double.infinity,
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 8.0,
                    children: List.generate(carImage.length, (index) {
                      return CarWidget(
                        model: carImage[index],
                      );
                    })),
              ),
              SizedBox(
                height: 4.h,
              ),
              SizedBox(
                height:
                    Device.orientation == Orientation.portrait ? 25.h : 50.h,
                width: Device.orientation == Orientation.portrait
                    ? double.infinity
                    : double.infinity,
                child: Card(
                  // semanticContainer: true,

                  // clipBehavior: Clip.antiAliasWithSaveLayer,

                  child: Image.asset(
                    'assets/images/Image 5.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              //
            ],
          ),
        ));
  }
}
