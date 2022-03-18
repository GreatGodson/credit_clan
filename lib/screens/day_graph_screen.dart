import 'package:credit_clan_task/components/text_style.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../components/theme.dart';

class DayGraphScreen extends StatefulWidget {
  const DayGraphScreen({Key? key}) : super(key: key);

  @override
  _DayGraphScreenState createState() => _DayGraphScreenState();
}

class _DayGraphScreenState extends State<DayGraphScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 40,
          ),
          child: SfCartesianChart(
              primaryXAxis: CategoryAxis(
                borderColor: Colors.white,
              ),
              tooltipBehavior: TooltipBehavior(
                enable: true,
                shouldAlwaysShow: true,
              ),
              series: <ChartSeries<_SalesData, String>>[
                SplineSeries<_SalesData, String>(
                    color: graphLineTheme,
                    width: 3,
                    splineType: SplineType.cardinal,
                    dataSource: data,
                    xValueMapper: (_SalesData sales, _) => sales.year,
                    yValueMapper: (_SalesData sales, _) => sales.sales,
                    name: '',
                    // Enable data label
                    dataLabelSettings:
                        const DataLabelSettings(isVisible: false))
              ]),
        ),
        const Positioned(
            top: 180,
            left: 230,
            child: CircleAvatar(
              radius: 12,
              backgroundColor: circleAvatarColor,
              child: CircleAvatar(
                backgroundColor: scaffoldBackgroundTheme,
                radius: 6,
              ),
            )),
        Positioned(
          top: 192,
          left: 180,
          child: Image.asset(
            'images/graphData.png',
            width: 120,
            height: 66,
          ),
        ),
        Positioned(
            top: 244,
            left: 243,
            child: Container(width: 2, height: 57, color: graphLineTheme)),
        const Positioned(
          top: 300,
          left: 230,
          child: CircleAvatar(
              radius: 14,
              backgroundColor: graphLineTheme,
              child: CircularStdText(
                text: '11',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: scaffoldBackgroundTheme,
              )),
        )
      ]),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

List<_SalesData> data = [
  _SalesData('7', 2),
  _SalesData('8', 4),
  _SalesData('9', 3),
  _SalesData('10', 6),
  _SalesData('11', 4),
  _SalesData('12', 8),
];
