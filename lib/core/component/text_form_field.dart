import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget defaultFormField({
  required TextEditingController? controller,
  required TextInputType? type,
  ValueChanged<String>? onSubmit,
  ValueChanged<String>? onChange,
  bool isPassword = false,
  required FormFieldValidator<String>? validate,
  String? label,
  TextStyle? labelStyle,
  String? hintText,
  Widget? prefix,
  TextStyle? style,
  IconData? suffix,
  Function? suffixpress,
  Widget? suffixIcon,
  int? maxLines,
}) =>
    Padding(
      padding: EdgeInsets.only(left: .5.w, right: .5.w),
      child: Container(
        // height: 50,
            margin: new EdgeInsets.all(18.0), // Or set whatever you want 

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: TextFormField(
          controller: controller,
          keyboardType: type,
          obscureText: isPassword,
          onFieldSubmitted: onSubmit,
          onChanged: onChange,
          validator: validate,
          maxLines: maxLines,
          style: style,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            // errorStyle: TextStyle(height: 1),
// constraints: BoxConstraints(maxHeight: 58, minHeight: 50),
            labelText: label,
            labelStyle: labelStyle,
            hintText: hintText,

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 1.0,
              ),
            ),
            

            contentPadding: EdgeInsets.symmetric(vertical: 5),
            prefixIcon: prefix,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              // borderSide: BorderSide.none,

              borderSide: BorderSide(
                color: Color(0xffC2C2C2),
                width: 1.0,
              ),
            ),

            suffixIcon: suffixIcon,

            // suffixIcon: IconButton(
            //     icon: Icon(
            //       suffix,
            //     ),
            //     onPressed: () {
            //       suffixpress!;
            //     }),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget(
      {this.validationText,
      this.labeText,
      this.hintText,
      this.suffixIcon,
      this.controller,
      this.prefixIcon,
      super.key});
  final TextEditingController? controller;
  final String? validationText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  final String? labeText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: defaultFormField(
            
            hintText: hintText,
            suffixIcon: suffixIcon,
            prefix: prefixIcon,
            maxLines: 1,
            labelStyle: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'Tajawal',
            ),
            controller: controller,
            validate: (value) {
              if (value!.isEmpty) {
                return validationText;
              }
              return null;
            },
            type: TextInputType.emailAddress,
          ),
        ),
      ],
    );
  }
}
