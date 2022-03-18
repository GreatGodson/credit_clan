import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../widgets/components/text_style.dart';
import '../../../theme/theme.dart';

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
              series: <ChartSeries<_SpendingData, String>>[
                SplineSeries<_SpendingData, String>(
                    color: graphLineTheme,
                    width: 3,
                    splineType: SplineType.cardinal,
                    dataSource: data,
                    xValueMapper: (_SpendingData sales, _) => sales.year,
                    yValueMapper: (_SpendingData sales, _) => sales.sales,
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
              backgroundColor: circleAvatarTheme,
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

class _SpendingData {
  _SpendingData(this.year, this.sales);

  final String year;
  final double sales;
}

List<_SpendingData> data = [
  _SpendingData('7', 2),
  _SpendingData('8', 4),
  _SpendingData('9', 3),
  _SpendingData('10', 6),
  _SpendingData('11', 4),
  _SpendingData('12', 8),
];
