

import 'package:flutter/material.dart';

import '../Utils/color.dart';
import 'custom_circle_button.dart';

class CustomItemCard extends StatefulWidget {
  final String title;
  final String Value;
  final IconData icon;
  final bool? isDark;

  const CustomItemCard({
    super.key, required this.title, required this.Value, required this.icon,  this.isDark
  });

  @override
  State<CustomItemCard> createState() => _CustomItemCardState();
}

class _CustomItemCardState extends State<CustomItemCard> {
  @override
  Widget build(BuildContext context) {
    var thisIsDark = widget.isDark==true;
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: thisIsDark ? AppColor.SecondaryColor: AppColor.PrimariColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment:AlignmentDirectional.centerEnd,
            child: CustomCircleButton( icon: widget.icon,
                backgroundColor: thisIsDark? Colors.white.withOpacity(.1)
                    : Colors.black.withOpacity(.1),
              iconColor: thisIsDark?AppColor.WhiteColor:Colors.black,
            ),
          ),
          Text(widget.title,
            style: TextStyle(
                color:thisIsDark?Colors.white: Colors.black.withOpacity(.7),
                fontWeight: FontWeight.w700
            ),
          ),
          Text(widget.Value,style: TextStyle(
              color: thisIsDark?Colors.white: Colors.black,
              fontWeight: FontWeight.w700
          ),)


        ],
      ),
    );
  }
}
