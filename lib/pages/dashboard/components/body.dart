import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/pages/dashboard/components/analytics_card.dart';
import 'package:flutter_application_1/pages/dashboard/components/greeting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class DigiPilotBody extends StatelessWidget {
  DigiPilotBody({super.key});

  final List<EmailData> emailData = [
    EmailData(
        date: '08/14/14',
        email: 'newtest.simmons@example.com',
        sent: '1',
        clickThroughRate: '13%',
        deliveredRate: '60%',
        unsubscribeRate: '12.5%',
        spamReportRate: '10%'),
    EmailData(
        date: '08/14/14',
        email: 'newtest.simmons@example.com',
        sent: '1',
        clickThroughRate: '13%',
        deliveredRate: '60%',
        unsubscribeRate: '12.5%',
        spamReportRate: '10%'),
    EmailData(
        date: '08/14/14',
        email: 'newtest.simmons@example.com',
        sent: '1',
        clickThroughRate: '13%',
        deliveredRate: '60%',
        unsubscribeRate: '12.5%',
        spamReportRate: '10%'),
    EmailData(
        date: '08/14/14',
        email: 'newtest.simmons@example.com',
        sent: '1',
        clickThroughRate: '13%',
        deliveredRate: '60%',
        unsubscribeRate: '12.5%',
        spamReportRate: '10%'),
    EmailData(
        date: '08/14/14',
        email: 'newtest.simmons@example.com',
        sent: '1',
        clickThroughRate: '13%',
        deliveredRate: '60%',
        unsubscribeRate: '12.5%',
        spamReportRate: '10%'),
    EmailData(
        date: '08/14/14',
        email: 'newtest.simmons@example.com',
        sent: '1',
        clickThroughRate: '13%',
        deliveredRate: '60%',
        unsubscribeRate: '12.5%',
        spamReportRate: '10%'),
    EmailData(
        date: '08/14/14',
        email: 'newtest.simmons@example.com',
        sent: '1',
        clickThroughRate: '13%',
        deliveredRate: '60%',
        unsubscribeRate: '12.5%',
        spamReportRate: '10%'),
    EmailData(
        date: '08/14/14',
        email: 'newtest.simmons@example.com',
        sent: '1',
        clickThroughRate: '13%',
        deliveredRate: '60%',
        unsubscribeRate: '12.5%',
        spamReportRate: '10%'),
    EmailData(
        date: '08/14/14',
        email: 'newtest.simmons@example.com',
        sent: '1',
        clickThroughRate: '13%',
        deliveredRate: '60%',
        unsubscribeRate: '12.5%',
        spamReportRate: '10%'),
    EmailData(
        date: '08/14/14',
        email: 'newtest.simmons@example.com',
        sent: '1',
        clickThroughRate: '13%',
        deliveredRate: '60%',
        unsubscribeRate: '12.5%',
        spamReportRate: '10%'),
    EmailData(
        date: '08/14/14',
        email: 'newtest.simmons@example.com',
        sent: '1',
        clickThroughRate: '13%',
        deliveredRate: '60%',
        unsubscribeRate: '12.5%',
        spamReportRate: '10%'),
    EmailData(
        date: '08/14/14',
        email: 'newtest.simmons@example.com',
        sent: '1',
        clickThroughRate: '13%',
        deliveredRate: '60%',
        unsubscribeRate: '12.5%',
        spamReportRate: '10%'),

    // Add more data here
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
            const GreetingComponent(),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.transparent,
              // height: 400,
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
                    margin: const EdgeInsets.only(
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
                        gridData: const FlGridData(
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
                            )),
                        alignment: BarChartAlignment.spaceAround,
                        barGroups: [
                          BarChartGroupData(
                            x: 6,
                            barRods: [
                              BarChartRodData(
                                  toY: 5,
                                  color: DigiPilotColors.primary,
                                  width: 30,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(0)))
                            ],
                            showingTooltipIndicators: [1],
                          ),
                          BarChartGroupData(
                            x: 6,
                            barRods: [
                              BarChartRodData(
                                  toY: 1,
                                  color: DigiPilotColors.primary,
                                  width: 30,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(0)))
                            ],
                            showingTooltipIndicators: [1],
                          ),
                          BarChartGroupData(
                            x: 6,
                            barRods: [
                              BarChartRodData(
                                  toY: 3,
                                  color: DigiPilotColors.primary,
                                  width: 30,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(0)))
                            ],
                            showingTooltipIndicators: [1],
                          ),
                          BarChartGroupData(
                            x: 6,
                            barRods: [
                              BarChartRodData(
                                  toY: 7,
                                  color: DigiPilotColors.primary,
                                  width: 30,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(0)))
                            ],
                            showingTooltipIndicators: [1],
                          ),
                          BarChartGroupData(
                            barsSpace: 10,
                            x: 1,
                            barRods: [
                              BarChartRodData(
                                  toY: 5,
                                  color: DigiPilotColors.primary,
                                  width: 30,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(0)))
                            ],
                            showingTooltipIndicators: [1],
                          ),
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 400,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'All Competitor Performance',
                                style: GoogleFonts.roboto(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Icon(Icons.more_horiz),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: SfDataGrid(
                              source: EmailDataSource(emailData),
                              columnWidthMode: ColumnWidthMode.fill,
                              columns: <GridColumn>[
                                GridColumn(
                                  columnName: 'Date',
                                  label: Container(
                                    padding: const EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Date',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                GridColumn(
                                  columnName: 'Email',
                                  label: Container(
                                    padding: const EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Email',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                GridColumn(
                                  columnName: 'Sent',
                                  label: Container(
                                    padding: const EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Sent',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                GridColumn(
                                  columnName: 'Click-Through Rate',
                                  label: Container(
                                    padding: const EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Click-Through Rate',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                GridColumn(
                                  columnName: 'Delivered Rate',
                                  label: Container(
                                    padding: const EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Delivered Rate',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                GridColumn(
                                  columnName: 'Unsubscribe Rate',
                                  label: Container(
                                    padding: const EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Unsubscribe Rate',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                GridColumn(
                                  columnName: 'Spam Report Rate',
                                  label: Container(
                                    padding: const EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Spam Report Rate',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 500,
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
                  child:  Column(
                    children: [
                      Row(
                        children: [
                          Text("Geography",style: GoogleFonts.roboto(
                              fontSize: 15, fontWeight: FontWeight.w500
                          ),),
                          Spacer(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Icon(Icons.more_horiz),
                          )
                        ],
                      ),
                      
                      Row(
                        children: [
                          SfRadialGauge(
                            
                            axes: <RadialAxis>[
                              RadialAxis(
                                minimum: 0,
                                maximum: 100,
                                radiusFactor: 1,
                                ranges: <GaugeRange>[
                                  GaugeRange(
                                      startValue: 0,
                                      endValue: 100,
                                      color: Colors.grey.withOpacity(0.1),
                                      startWidth: 0,
                                      endWidth: 0),
                                ],
                                pointers: <GaugePointer>[
                                  NeedlePointer(
                                    value: 70,
                                    enableAnimation: true,
                                    animationDuration: 1000,
                                    animationType: AnimationType.ease,
                                    needleColor: DigiPilotColors.primary,
                                    needleStartWidth: 1,
                                    needleEndWidth: 10,
                                    knobStyle: const KnobStyle(
                                      knobRadius: 0.15,
                                      sizeUnit: GaugeSizeUnit.factor,
                                    ),
                                  )
                                ],
                              )
                            ],
                          
                          
                          )
                        ],
                      )
                    ],
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class EmailData {
  String date,
      email,
      sent,
      clickThroughRate,
      deliveredRate,
      unsubscribeRate,
      spamReportRate;

  EmailData({
    required this.date,
    required this.email,
    required this.sent,
    required this.clickThroughRate,
    required this.deliveredRate,
    required this.unsubscribeRate,
    required this.spamReportRate,
  });
}

class EmailDataSource extends DataGridSource {
  List<DataGridRow> _emailData = [];

  EmailDataSource(List<EmailData> emailData) {
    _emailData = emailData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'Date', value: e.date),
              DataGridCell<String>(columnName: 'Email', value: e.email),
              DataGridCell<String>(columnName: 'Sent', value: e.sent),
              DataGridCell<String>(
                  columnName: 'Click-Through Rate', value: e.clickThroughRate),
              DataGridCell<String>(
                  columnName: 'Delivered Rate', value: e.deliveredRate),
              DataGridCell<String>(
                  columnName: 'Unsubscribe Rate', value: e.unsubscribeRate),
              DataGridCell<String>(
                  columnName: 'Spam Report Rate', value: e.spamReportRate),
            ]))
        .toList();
  }

  @override
  List<DataGridRow> get rows => _emailData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(8.0),
        child: Text(dataGridCell.value.toString()),
      );
    }).toList());
  }
}
