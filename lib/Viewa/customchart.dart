
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../Utils/color.dart';

class Customchart extends StatefulWidget {
  const Customchart({super.key});

  @override
  State<Customchart> createState() => _CustomchartState();
}

class _CustomchartState extends State<Customchart> {
  @override
  Widget build(BuildContext context) {
    List<Map> summery=[
      {
        "value":80.0,
        "index":0,
      },
      {
        "value":50.0,
        "index":1,
      },
      {
        "value":80.0,
        "index":2,
      },
      {
        "value":65.0,
        "index":3,
      },
      {
        "value":85.0,
        "index":4,
      },
      {
        "value":80.0,
        "index":4,
      },
      {
        "value":65.0,
        "index":4,
      },
    ];
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: 150,
        child: BarChart(
            BarChartData(

              maxY: 100,
              minY: 0,
               gridData: FlGridData(
                 show: false,
               ),
              titlesData: FlTitlesData(
                show: true,
                topTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false
                  )
                ),
                rightTitles: AxisTitles(
                    sideTitles: SideTitles(
                        showTitles: false
                    )
                ),
                leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                        showTitles: false
                    )
                ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true
                    ),
                    axisNameSize: 10,

              )

              ),

              barGroups: summery.map((
                  Element)=>BarChartGroupData(x: Element["index"]+1,
                barRods: [
                  BarChartRodData(toY: Element["value"],
                    color: AppColor.PrimariColor,
                    width: 35,
                    borderRadius: BorderRadius.circular(8),
                    backDrawRodData: BackgroundBarChartRodData(
                     color: AppColor.SecondaryColor,
                      show: true,
                      toY: 100
                    )
                  ),

                ]



              )).toList()


            )

        ),
      ),
    );
  }
}
