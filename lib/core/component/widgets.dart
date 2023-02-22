
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:taskdream/model/model_story.dart';

class StoryIcon extends StatelessWidget {
  const StoryIcon({ this.model,super.key});
  final Story? model;

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: Color.fromARGB(255, 255, 23, 127),
          child: CircleAvatar(
            radius: 34,
            backgroundColor: Colors.white,
            child: CircleAvatar(
                radius: 30.0,
                backgroundColor: Color(0xffEFEFEF),
                backgroundImage: AssetImage(model!.image)),
          ),
        ),
        SizedBox(
          height: .8.h,
        ),
        Text(
          model!.name,
          style: TextStyle(
            height: 1.1,
            fontFamily: 'jannah',
          ),
        ),
      ],
    ),
  );
  }
}