
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../Utils/color.dart';
import '../Widgets/custom_circle_button.dart';
import '../Widgets/custom_health_item.dart';
import '../Widgets/custom_time_tracker.dart';
import '../Widgets/text_style.dart';
import 'customchart.dart';

class Fitness2ndScreen extends StatefulWidget {
  const Fitness2ndScreen({super.key});

  @override
  State<Fitness2ndScreen> createState() => _Fitness2ndScreenState();
}

class _Fitness2ndScreenState extends State<Fitness2ndScreen> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.sizeOf(context);
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,

        backgroundColor: Colors.transparent,
        leading: CustomCircleButton(icon: Icons.arrow_back_ios),
        actions: [
          CustomCircleButton(icon: Icons.notifications),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            heading(data: "Health",
            textColor: AppColor.WhiteColor,
            ),
            heading(data: "Overview",
            textColor: AppColor.PrimariColor,
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(right: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomHealthItem(title: "Calories", subtitle: "1360 kCal"),
                  CustomHealthItem(title: "Protein", subtitle: "30 Gram"),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.only(right: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomHealthItem(title: "Sleep", subtitle: "3 hours"),
                  CustomHealthItem(title: "Weight", subtitle: "67 KG"),
                ],
              ),
            ),

            const SizedBox(height: 20,),


            Container(
              width: size.width,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColor.PrimariColor,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Column(
                children: [

                  ListTile(
                      contentPadding: EdgeInsets.zero,

                      leading: CustomCircleButton(icon: Icons.heart_broken,
                        iconColor: Colors.black,
                        backgroundColor: Colors.black.withOpacity(.5),
                      ),
                      title:const heading(data: "851 ms",
                      textColor: Colors.black,
                        fontSize: 30,
                      ),
                      subtitle: heading(data: "R-R interval",
                      textColor: Colors.black.withOpacity(.5),
                        fontSize: 15,
                      ),






                    ),
                  SizedBox(height: 20,),
                  const Row(
                    children: [
                      Expanded(
                        child: 
                          CustomTimeTracker(time: "850 ms",
                          isFilled: true,
                          )
                      ),
                      SizedBox(width: 5,),
                      Expanded(
                          child:
                          CustomTimeTracker(time: "830 ms",
                            isFilled: false,
                          )
                      ),
                      SizedBox(width: 5,),
                      Expanded(
                          child:
                          CustomTimeTracker(time: "810 ms",
                            isFilled: false,
                          )
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),

            Container(
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: AppColor.PrimariColor)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: heading(data:"Blood Pressuer",
                    fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Customchart()


                ],
              ),
            )

















          ],





        ),
      ),


    );
  }
}
