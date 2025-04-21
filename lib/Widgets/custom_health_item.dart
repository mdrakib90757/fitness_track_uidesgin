
import 'package:fitness_track_project/Widgets/text_style.dart';
import 'package:flutter/cupertino.dart';

import '../Utils/color.dart';

class CustomHealthItem extends StatefulWidget {
  final String title;
  final String subtitle;

  const CustomHealthItem({super.key, required this.title, required this.subtitle});

  @override
  State<CustomHealthItem> createState() => _CustomHealthItemState();
}

class _CustomHealthItemState extends State<CustomHealthItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color: AppColor.PrimariColor,
              shape: BoxShape.circle
          ),
        ),
        SizedBox(width: 10,),
        Column(
          children: [
            heading(data: widget.title,
              fontSize: 15,
            ),
            heading(data: widget.subtitle,
              fontSize: 10,
              textColor: AppColor.WhiteColor.withOpacity(.5),
            ),
          ],
        ),






      ],
    );
  }
}
