
import 'package:flutter/material.dart';

class BellWidget extends StatelessWidget {
  const BellWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
    children: [
    Icon(Icons.notifications ,
      size: 40,),
    Positioned(
     right: 2,
    
     child:  Container(
       padding: EdgeInsets.all(1),
       decoration:  BoxDecoration(
         color: Colors.red,
         borderRadius: BorderRadius.circular(6),
       ),
       constraints: BoxConstraints(
         minWidth: 18,
         minHeight: 12,
       ),
       child: Text(
         '2',
         style:  TextStyle(
           color: Colors.white,
           fontSize: 10,
         ),
         textAlign: TextAlign.center,
       ),
     ),
      )
    ],
  );
  }
}