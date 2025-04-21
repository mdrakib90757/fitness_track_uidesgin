


import 'dart:ui';

import 'package:flutter/material.dart';
import '../Utils/color.dart';
import '../Widgets/custom_item.dart';
import '../Widgets/custom_item_card.dart';
import '../Widgets/text_style.dart';
import '../Widgets/custom_circle_button.dart';
import 'fitness_2nd_screen.dart';


class FitnessHome extends StatefulWidget {
  const FitnessHome({super.key});

  @override
  State<FitnessHome> createState() => _FitnessHomeState();
}

class _FitnessHomeState extends State<FitnessHome> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const CustomCircleButton(icon: Icons.menu,),
        actions: const [
          CustomCircleButton(icon: Icons.notifications)
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            const heading(data: "Make Your",
            fontWeight: FontWeight.w600, ),

            heading(data: "Body Perfect",
              fontWeight: FontWeight.w600,
              textColor: AppColor.PrimariColor
            ),
            const SizedBox(height: 20,),
            Container(
                width: size.width,
                height: size.height *.23,
                padding: const EdgeInsets.all(15),
                // height: size.height * .2,
                decoration: BoxDecoration(
                    color: AppColor.PrimariColor,
                    borderRadius: BorderRadius.circular(20)
                ),

              child: Stack(
                alignment: Alignment.centerRight,
                clipBehavior: Clip.none,
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Full Body\nExcreise X3",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const CustomItem(icon: Icons.local_fire_department_outlined, text: "1230 K cal"),
                        const CustomItem(icon: Icons.access_alarm_rounded, text: "50 Min"),
                        const SizedBox(height: 15,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFB9CF30),
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Fitness2ndScreen(),));
                            }, child: const Text("Start Now",style: TextStyle(
                          color: Colors.black,
                        ),)
                        )




                      ],
                    ),
                  ),
                  Positioned(
                    right: -40,
                    child: Image.asset("assets/image/man.png",
                      height: 260,width: 260,

                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40,),
            const Row(
              children: [
                Expanded(
                  child:CustomItemCard(
                      title: "Running\nDistance",
                      Value: "1.8 KM",
                      icon: Icons.directions_run)

                ),
                SizedBox(width: 10,),
                Expanded(
                    child:CustomItemCard(
                        title: "Running\nDistance",
                        Value: "1.8 KM",
                        icon: Icons.directions_bike,
                      isDark: true,
                    )

                ),
              ],
            ),
            
            const SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: AppColor.SecondaryColor
              ),
              child:  ListTile(
                contentPadding: EdgeInsets.only(left: 15),
                title: heading(data: "Appoinment",
                  fontSize: 20,
                ),
                subtitle: heading(
                  data: "For a exrecise practice",
                  fontSize: 15,
                  textColor: AppColor.WhiteColor.withOpacity(.5),
                ),
                trailing: CustomCircleButton(icon: Icons.call,
                  backgroundColor: AppColor.PrimariColor,
                  iconColor: Colors.black,

                ),

              ),
            )






          ],
        ),
      ),


    );
  }
}
