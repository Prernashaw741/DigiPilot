import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/pages/dashboard/components/analytics_card.dart';
import 'package:flutter_application_1/pages/dashboard/components/greeting.dart';
import 'package:google_fonts/google_fonts.dart';

class DigiPilotBody extends StatelessWidget {
  const DigiPilotBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      color: Colors.grey.withOpacity(0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  offset: const Offset(0, 0),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dashboard",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Full Details of your Competitors",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(Icons.person),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          GreetingComponent(),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.transparent,
            height: 400,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    child: Column(
                  children: [
                    Wrap(
                      spacing: 10,
                      children: [AnalyticsCard(), AnalyticsCard()],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      spacing: 10,
                      children: [AnalyticsCard(), AnalyticsCard()],
                    ),
                  ],
                )),
                Expanded(
                    child: Container(
                  height: 305,
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        offset: const Offset(0, 0),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: BarChart(
                    BarChartData(
                      gridData: FlGridData(
                        show: true,
                      ),
                      extraLinesData: ExtraLinesData(
                        horizontalLines: [
                          HorizontalLine(
                            y: 5,
                            color: Colors.grey.withOpacity(0.5),
                            strokeWidth: 1,
                            dashArray: [5, 5],
                          ),
                          HorizontalLine(
                            y: 10,
                            color: Colors.grey.withOpacity(0.5),
                            strokeWidth: 1,
                            dashArray: [5, 5],
                          ),
                        ],
                      ),
                      borderData: FlBorderData(
                        show: true,
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          left: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          right: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          top: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        
                        )
                      ),
                      alignment: BarChartAlignment.spaceAround,
                      barGroups: [
                        BarChartGroupData(
                          x: 6,
                          barRods: [
                            BarChartRodData(toY: 5, color: DigiPilotColors.primary,width: 30,borderRadius: BorderRadius.all(Radius.circular(0)))
                          ],
                          showingTooltipIndicators: [1],
                        ),
                        BarChartGroupData(
                          x: 6,
                          barRods: [
                            BarChartRodData(toY: 1, color: DigiPilotColors.primary,width: 30,borderRadius: BorderRadius.all(Radius.circular(0)))
                          ],
                          showingTooltipIndicators: [1],
                        ),
                        BarChartGroupData(
                          x: 6,
                          barRods: [
                            BarChartRodData(toY: 3, color: DigiPilotColors.primary,width: 30,borderRadius: BorderRadius.all(Radius.circular(0)))
                          ],
                          showingTooltipIndicators: [1],
                        ),
                        BarChartGroupData(
                          x: 6,
                          barRods: [
                            BarChartRodData(toY: 7, color: DigiPilotColors.primary,width: 30,borderRadius: BorderRadius.all(Radius.circular(0)))
                          ],
                          showingTooltipIndicators: [1],
                        ),
                        BarChartGroupData(
                          barsSpace: 10,
                          x: 1,
                          barRods: [
                            BarChartRodData(toY: 5, color: DigiPilotColors.primary,width: 30,borderRadius: BorderRadius.all(Radius.circular(0)))
                          ],
                          showingTooltipIndicators: [1],
                        ),
                        
                      ],
                    ),
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
