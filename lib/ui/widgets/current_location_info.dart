import 'package:flutter/material.dart';
import 'package:weather_app/ui/widgets/current_day.dart';
import 'package:weather_app/ui/widgets/temperature_info.dart';

import '../../utils/unitConversion.dart';
import '../../utils/unitConversion.dart';
import '../../utils/weatherIconSelector.dart';
import '../../utils/weatherIconSelector.dart';
import 'info_table.dart';
//import 'info_table.dart';

class CurrentLocationInfo extends StatelessWidget {
  final String location;
  final double temperature;
  final bool isCelcius;
  final String weatherIcon;
  final int timestamp;
  final String weatherType;
  final double windSpeed;
  final int windDirection;

  CurrentLocationInfo({
    @required this.location,
    @required this.temperature,
    @required this.isCelcius,
    @required this.weatherIcon,
    @required this.timestamp,
    @required this.weatherType,
    @required this.windSpeed,
    @required this.windDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: new Container(
        constraints: BoxConstraints(maxHeight: 850.0, minHeight: 850.0, maxWidth: 700, minWidth: 700),
        child: Column(
          children: <Widget>[
            Expanded(
                child: CurrentDay(
              timestamp: timestamp,
            )),
            Row(
              children: <Widget>[
                Container(
                  color: Color(0xFFFFFF),
                ),
                Container(
                  width: 150,
                  child: Column(children: [
                    Image.asset(
                      weatherIcon,
                      fit: BoxFit.cover,
                      width: 200.0,
                    ),
                  ]),
                ),
                Container(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TemperatureInfo(
                              temperature: temperature,
                              isCelcius: true),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            location,
                            style: Theme.of(context).textTheme.title,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              constraints: BoxConstraints(maxHeight: 50.0, minHeight: 30.0),
            ),
            InfoTable (
                mainTitle: "Wind : ",
                firstTitle: "Speed",
                firstTitleContent: windSpeed.toString(),
                secondTitle: "Gust",
                secondTitleContent: "30 kts",
                thirdTitle: "Direction",
                thirdTitleContent: getSpecificCompassDirection(windDirection),
            ),
            Container(
              constraints: BoxConstraints(maxHeight: 50.0, minHeight: 30.0),
            ),
            InfoTable (
                mainTitle: "Precipitation : ",
                firstTitle: "Fall",
                firstTitleContent: "18 mm",
                secondTitle: " ",
                secondTitleContent: " ",
                thirdTitle: "Chance",
                thirdTitleContent: "56%"
                ),
      Container(
        constraints: BoxConstraints(maxHeight: 50.0, minHeight: 30.0),
      ),
      InfoTable (
        mainTitle: "All Day : ",
        firstTitle: "Moon",
        firstTitleContent: "Waxing Crescent",
        secondTitle: " ",
        secondTitleContent: " ",
        thirdTitle: "Tide",
        thirdTitleContent: "08:47 - 14:21",
      ),
          ],
        ),
      ),
    );
  }
}
