
import 'package:fitness_track_project/Widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTimeTracker extends StatefulWidget {
  final bool? isFilled;
  final String time;
  const CustomTimeTracker({super.key, this.isFilled, required this.time});

  @override
  State<CustomTimeTracker> createState() => _CustomTimeTrackerState();
}

class _CustomTimeTrackerState extends State<CustomTimeTracker> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 5,
          decoration: BoxDecoration(
              color: widget.isFilled == true?  Colors.black :Colors.black.withOpacity(.2),
              borderRadius: BorderRadius.circular(40)
          ),
        ),
        SizedBox(height: 10,),
        heading(data:widget.time,
          fontSize: 15,
          textColor: Colors.black,
        )
      ],
    );
  }
}
