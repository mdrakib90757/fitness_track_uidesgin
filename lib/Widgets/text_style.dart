



import 'package:flutter/material.dart';

import '../Utils/color.dart';

class heading extends StatefulWidget {
  final String data;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  const heading({
    super.key, required this.data,  this.textColor,  this.fontWeight, this.fontSize
  });

  @override
  State<heading> createState() => _headingState();
}

class _headingState extends State<heading> {
  @override
  Widget build(BuildContext context) {
    return
      Text( widget.data ,style: TextStyle(
        color: widget.textColor ?? AppColor.WhiteColor,
        fontSize: widget.fontSize ?? 30,
        fontWeight:widget.fontWeight ?? FontWeight.w700
    ),
    );
  }
}



