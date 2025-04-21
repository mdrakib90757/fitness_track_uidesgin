
import 'package:flutter/material.dart';

class CustomItem extends StatefulWidget {
  final IconData icon;
  final String text;
  const CustomItem({super.key, required this.icon, required this.text});

  @override
  State<CustomItem> createState() => _CustomItemState();
}

class _CustomItemState extends State<CustomItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(widget.icon, color: Colors.black.withOpacity(.5)),
        SizedBox(width: 8,),
        Text(widget.text,style: TextStyle(
          color: Colors.black.withOpacity(.5),
        ),)
      ],
    );
  }
}
