import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/color.dart';

class CustomCircleButton extends StatefulWidget {
  final IconData icon;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? iconColor;




  const CustomCircleButton({super.key,
    required this.icon, this.height, this.width, this.backgroundColor, this.iconColor
  });

  @override
  State<CustomCircleButton> createState() => _CustomCircleButtonState();
}

class _CustomCircleButtonState extends State<CustomCircleButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height?? 80,
      width: widget.width ?? 80,
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? AppColor.WhiteColor.withOpacity(.1),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon( widget.icon,
          size: 25,
          color:widget.iconColor ?? Colors.white,
        ),
      ),

    );
  }
}
