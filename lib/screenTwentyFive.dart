import 'package:fast_pay/components/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenTwentyFive extends StatefulWidget {
  const ScreenTwentyFive({super.key});

  @override
  State<ScreenTwentyFive> createState() => _ScreenTwentyFiveState();
}

List<BarChartGroupData> barChartData = [
  BarChartGroupData(
    x: 0,
    barRods: [
      BarChartRodData(
        y: 1000,  // Dollar amount for January
        width: 30,  // Width of the bar
        colors: [Constants.primaryColor]  ,  // Color of the bar
      ),
    ],
    showingTooltipIndicators: [0],  // Index of the data point for tooltip
  ),
  BarChartGroupData(
    x: 1,
    barRods: [
      BarChartRodData(
        y: 1600,  // Dollar amount for February
        width: 30,
        colors: [Constants.primaryColor],
      ),
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 2,
    barRods: [
      BarChartRodData(
        y: 900,  // Dollar amount for February
        width: 30,
        colors: [Constants.primaryColor],
      ),
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 3,
    barRods: [
      BarChartRodData(
        y: 500,  // Dollar amount for February
        width: 30,
        colors: [Constants.primaryColor],
      ),
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 4,
    barRods: [
      BarChartRodData(
        y: 0,  // Dollar amount for February
        width: 30,
        colors: [Constants.primaryColor],
      ),
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 5,
    barRods: [
      BarChartRodData(
        y: 0,  // Dollar amount for February
        width: 20,
        colors: [Constants.primaryColor],
      ),
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 6,
    barRods: [
      BarChartRodData(
        y: 0,  // Dollar amount for February
        width: 30,
        colors: [Constants.primaryColor],
      ),
    ],
    showingTooltipIndicators: [2],
  ),


  // Repeat for other months...
];

class _ScreenTwentyFiveState extends State<ScreenTwentyFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Text('Payment History'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Constants.primaryColor,
          titleTextStyle: TextStyle(
            fontSize: Constants.largeFontSize,
            fontFamily: Constants.primaryFont,
            color: Constants.tertiaryColor,
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios)),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 70,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 300,
              width: double.infinity,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  barGroups: barChartData,
                  titlesData: FlTitlesData(
                    topTitles: SideTitles(showTitles: false),
                    rightTitles: SideTitles(showTitles: false),
                    leftTitles: SideTitles(showTitles: true,
                      reservedSize: 40,
                      getTextStyles: (context, value) => const TextStyle(
                        color: Constants.primaryColor,
                        fontSize: Constants.mediumFontSize,
                        fontFamily: Constants.secondaryFont,
                      ),
                      getTitles: (value){
                        if(value.toInt() % 200 == 0){
                          return value.toInt().toString();
                        }
                        return '';
                      }
                  ),
                    // Configure left titles
                    bottomTitles: SideTitles(  // Configure bottom titles (months)
                      showTitles: true,
                      getTitles: (double value) {
                        // Convert the x-axis value (0, 1, 2, etc.) to month names
                        switch (value.toInt()) {
                          case 0:
                            return 'Jan';
                          case 1:
                            return 'Feb';
                          case 2:
                            return 'March';
                          case 3:
                            return 'April';
                          case 4:
                            return 'May';
                          case 5:
                            return 'June';
                          case 6:
                            return 'July';
                          case 7:
                            return 'August';
                        // Add cases for other months...
                          default:
                            return '';
                        }

                      },
                      getTextStyles: (context, value) => const TextStyle(
                        color: Constants.primaryColor,
                        fontSize: Constants.mediumFontSize,
                        fontFamily: Constants.secondaryFont,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: true),
                  barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(
                      tooltipBgColor: Colors.transparent,
                    ),
                  )// Hide chart borders
                ),
              ),

            ),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Constants.tertiaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.money_euro_circle,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bank B',
                        style: TextStyle(
                            fontFamily: Constants.secondaryFont,
                            fontSize: Constants.mediumFontSize,
                            color: Constants.primaryColor),
                      ),
                      Row(
                        children: [
                          Text(
                            '03/05',
                            style: TextStyle(
                                fontFamily: Constants.tertiaryFont,
                                fontSize: 10,
                                color: Constants.secondaryColor),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'Payed',
                            style: TextStyle(
                                fontFamily: Constants.secondaryFont,
                                fontSize: 10,
                                color: Colors.green),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 175,
                  ),
                  Icon(CupertinoIcons.question_circle)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
