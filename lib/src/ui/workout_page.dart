import 'package:fitness_app/src/controller/body_page_controller.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({Key? key}) : super(key: key);

  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  BodyPageController bodyPageController = Get.put(BodyPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('Body Workout'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Container(
                height: 62,
                decoration: const BoxDecoration(),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            final c = Get.find<BodyPageController>();
                            c.setTabIndex(0);
                            c.update();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: bodyPageController.getTabIndex == 0
                                  ? Colors.lightGreenAccent
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: const Center(
                              child: Text('Exercise'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            final c = Get.find<BodyPageController>();
                            c.setTabIndex(1);
                            c.update();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: bodyPageController.getTabIndex == 1
                                  ? Colors.lightGreenAccent
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: const Center(
                              child: Text('Detail'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                height: 240,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: -90,
                      top: -120,
                      bottom: 32,
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.lightGreenAccent)),
                      ),
                    ),
                    Positioned(
                      right: -132,
                      bottom: -48,
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.lightGreenAccent)),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      right: 16,
                      top: 16,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Burn calories',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '20,000 kcal',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(32),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Row(
                              children: const [
                                Text(
                                  'This Week',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: 16,
                      right: 16,
                      top: 84,
                      bottom: 16,
                      child: BarChart(
                        BarChartData(
                            alignment: BarChartAlignment.spaceAround,
                            gridData: FlGridData(show: false),
                            titlesData: FlTitlesData(
                              bottomTitles: SideTitles(
                                  showTitles: true,
                                  getTextStyles: (context, value) =>
                                      const TextStyle(color: Colors.white),
                                  getTitles: (value) {
                                    switch (value.toInt()) {
                                      case 0:
                                        return 'S';
                                      case 1:
                                        return 'M';
                                      case 2:
                                        return 'T';
                                      case 3:
                                        return 'W';
                                      case 4:
                                        return 'T';
                                      case 5:
                                        return 'F';
                                      case 6:
                                        return 'S';
                                      default:
                                        return 'A';
                                    }
                                  }),
                              leftTitles: SideTitles(showTitles: false),
                              rightTitles: SideTitles(showTitles: false),
                              topTitles: SideTitles(showTitles: false),
                            ),
                            borderData: FlBorderData(show: false),
                            axisTitleData: FlAxisTitleData(show: false),
                            barGroups: [
                              BarChartGroupData(x: 0, barRods: [
                                BarChartRodData(
                                    y: 16, width: 2.5, colors: [Colors.white])
                              ]),
                              BarChartGroupData(x: 1, barRods: [
                                BarChartRodData(
                                    y: 15, width: 2.5, colors: [Colors.white])
                              ]),
                              BarChartGroupData(x: 2, barRods: [
                                BarChartRodData(
                                    y: 12, width: 2.5, colors: [Colors.white])
                              ]),
                              BarChartGroupData(x: 3, barRods: [
                                BarChartRodData(
                                    y: 10, width: 2.5, colors: [Colors.white])
                              ]),
                              BarChartGroupData(x: 4, barRods: [
                                BarChartRodData(
                                    y: 16, width: 2.5, colors: [Colors.white])
                              ]),
                              BarChartGroupData(x: 5, barRods: [
                                BarChartRodData(
                                    y: 8, width: 2.5, colors: [Colors.white])
                              ]),
                              BarChartGroupData(x: 6, barRods: [
                                BarChartRodData(
                                    y: 16, width: 2.5, colors: [Colors.white])
                              ]),
                            ]),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Expanded(
                child: Placeholder(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bodyPageController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
