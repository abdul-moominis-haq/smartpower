import 'package:smartpower/widget-class/bardata.dart';
import 'package:smartpower/widget-class/names.dart';
import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/material.dart';

class StatisticsCharts extends StatefulWidget {
  const StatisticsCharts({super.key});

  @override
  State<StatisticsCharts> createState() => _StatisticsChartsState();
}

class _StatisticsChartsState extends State<StatisticsCharts> {
  Widget valueWidget = const Day();
  double radius = 60;
  Color dayColor = const Color.fromARGB(255, 240, 234, 234);
  Color monthColor = Colors.transparent;
  Color yearColor = Colors.transparent;
  bool daily = true;
  bool monthly = false;
  bool yearly = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {},
        child: ListView(
          //  physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 50,
                horizontal: 43,
              ),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 14, 1, 115),
                  borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        // Container(
                        //   child: MaterialButton(
                        //     onPressed: () {},
                        //     child: Text("Today"),
                        //   ),
                        // ),
                        //Daily graph
                        Container(
                          decoration: BoxDecoration(
                            color: dayColor,
                            borderRadius: const BorderRadiusDirectional.all(
                                Radius.circular(10)),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                dayColor =
                                    const Color.fromARGB(255, 240, 234, 234);
                                monthColor = Colors.transparent;
                                yearColor = Colors.transparent;
                                valueWidget = const Day();
                                daily = true;
                                monthly = false;
                                yearly = false;
                              });
                            },
                            child: Center(
                              child: Text(
                                "Daily",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: daily
                                      ? const Color.fromARGB(255, 0, 0, 0)
                                      : const Color.fromARGB(
                                          255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //Monthly graph
                        Container(
                          decoration: BoxDecoration(
                            color: monthColor,
                            borderRadius: const BorderRadiusDirectional.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                dayColor = Colors.transparent;
                                monthColor =
                                    const Color.fromARGB(255, 240, 234, 234);
                                yearColor = Colors.transparent;
                                daily = false;
                                monthly = true;
                                yearly = false;
                                valueWidget = Padding(
                                  padding: const EdgeInsets.all(30),
                                  child: BarChart(BarChartData(
                                      gridData: const FlGridData(show: false),
                                      borderData: FlBorderData(show: false),
                                      alignment: BarChartAlignment.spaceBetween,
                                      extraLinesData: const ExtraLinesData(),
                                      titlesData: FlTitlesData(
                                        rightTitles: const AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false)),
                                        leftTitles: const AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false)),
                                        topTitles: const AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false)),
                                        bottomTitles: AxisTitles(
                                          sideTitles: SideTitles(
                                            showTitles: true,
                                            getTitlesWidget: (value, meta) {
                                              String name = "";
                                              for (var i = 0;
                                                  i < NamesOf.months.length;
                                                  i++) {
                                                NamesOf.months[i];
                                                switch (value.toInt()) {
                                                  case 0:
                                                    name = NamesOf.months[0];
                                                    return Text(name);
                                                  case 1:
                                                    name = NamesOf.months[1];
                                                    return Text(name);
                                                  case 2:
                                                    name = NamesOf.months[2];
                                                    return Text(name);
                                                  case 3:
                                                    name = NamesOf.months[3];
                                                    return Text(name);
                                                  case 4:
                                                    name = NamesOf.months[4];
                                                    return Text(name);
                                                }
                                              }
                                              return Text(name);
                                            },
                                          ),
                                        ),
                                      ),
                                      minY: 0,
                                      maxY: 200,
                                      barTouchData: BarTouchData(enabled: true),
                                      barGroups: Bardata.bardataMonths
                                          .map(
                                            (e) => BarChartGroupData(
                                              x: e.id,
                                              barRods: [
                                                BarChartRodData(
                                                    toY: e.y,
                                                    width: 20,
                                                    color: const Color.fromARGB(
                                                        255, 14, 1, 115),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(12),
                                                      topRight:
                                                          Radius.circular(12),
                                                    )),
                                              ],
                                            ),
                                          )
                                          .toList())),
                                );
                              });
                            },
                            child: Center(
                              child: Text(
                                "Monthly",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: monthly
                                      ? const Color.fromARGB(255, 0, 0, 0)
                                      : const Color.fromARGB(
                                          255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //Yearly graph
                        Container(
                          decoration: BoxDecoration(
                            color: yearColor,
                            borderRadius: const BorderRadiusDirectional.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                dayColor = Colors.transparent;
                                monthColor = Colors.transparent;
                                yearColor =
                                    const Color.fromARGB(255, 240, 234, 234);
                                daily = false;
                                monthly = false;
                                yearly = true;
                                valueWidget = Padding(
                                  padding: const EdgeInsets.all(30),
                                  child: BarChart(BarChartData(
                                      gridData: const FlGridData(show: false),
                                      borderData: FlBorderData(show: false),
                                      alignment: BarChartAlignment.spaceBetween,
                                      titlesData: FlTitlesData(
                                        rightTitles: const AxisTitles(
                                          sideTitles:
                                              SideTitles(showTitles: false),
                                        ),
                                        leftTitles: const AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false)),
                                        topTitles: const AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false)),
                                        bottomTitles: AxisTitles(
                                          sideTitles: SideTitles(
                                            showTitles: true,
                                            getTitlesWidget: (value, meta) {
                                              String name = "";
                                              for (var i = 0;
                                                  i < NamesOf.years.length;
                                                  i++) {
                                                NamesOf.months[i];
                                                switch (value.toInt()) {
                                                  case 0:
                                                    name = NamesOf.years[0];
                                                    return Text(name);
                                                  case 1:
                                                    name = NamesOf.years[1];
                                                    return Text(name);
                                                  case 2:
                                                    name = NamesOf.years[2];
                                                    return Text(name);
                                                  case 3:
                                                    name = NamesOf.years[3];
                                                    return Text(name);
                                                }
                                              }
                                              return Text(name);
                                            },
                                          ),
                                        ),
                                      ),
                                      minY: 0,
                                      maxY: 5000,
                                      barTouchData: BarTouchData(enabled: true),
                                      barGroups: Bardata.bardataYears
                                          .map(
                                            (e) => BarChartGroupData(
                                              x: e.id,
                                              barRods: [
                                                BarChartRodData(
                                                    toY: e.y,
                                                    width: 20,
                                                    color: const Color.fromARGB(
                                                        255, 14, 1, 115),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(12),
                                                      topRight:
                                                          Radius.circular(12),
                                                    )),
                                              ],
                                            ),
                                          )
                                          .toList())),
                                );
                              });
                            },
                            child: Center(
                              child: Text(
                                "Yearly",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: yearly
                                      ? const Color.fromARGB(255, 0, 0, 0)
                                      : const Color.fromARGB(
                                          255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: SizedBox(
                height: 400,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Center(
                          child: valueWidget,
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Day extends StatelessWidget {
  const Day({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: BarChart(BarChartData(
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(show: false),
          alignment: BarChartAlignment.spaceBetween,
          titlesData: FlTitlesData(
            rightTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: const AxisTitles(
                sideTitles: SideTitles(
              showTitles: false,
            )),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  String name = "";
                  for (var i = 0; i < NamesOf.days.length; i++) {
                    NamesOf.days[i];
                    switch (value.toInt()) {
                      case 0:
                        name = NamesOf.days[0];
                        return Text(name);
                      case 1:
                        name = NamesOf.days[1];
                        return Text(name);
                      case 2:
                        name = NamesOf.days[2];
                        return Text(name);
                      case 3:
                        name = NamesOf.days[3];
                        return Text(name);
                      case 4:
                        name = NamesOf.days[4];
                        return Text(name);
                      case 5:
                        name = NamesOf.days[5];
                        return Text(name);
                      case 6:
                        name = NamesOf.days[6];
                        return Text(name);
                    }
                  }
                  return Text(name);
                },
              ),
            ),
          ),
          minY: 0,
          maxY: 100,
          barTouchData: BarTouchData(enabled: true),
          barGroups: Bardata.bardatadaily
              .map(
                (e) => BarChartGroupData(
                  x: e.id,
                  barRods: [
                    BarChartRodData(
                        toY: e.y,
                        width: 20,
                        color: const Color.fromARGB(255, 14, 1, 115),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        )),
                  ],
                ),
              )
              .toList())),
    );
  }
}
