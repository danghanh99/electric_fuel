import 'package:electri_fuel/resource/battery.dart';
import 'package:electri_fuel/resource/dialog.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'dart:math' as math;

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    Color greenColor = Color.fromARGB(255, 84, 221, 88);
    Color greenColor2 = Color(0xff94d500);
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          top(),
          distanceRemain(width - 20),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              itemGrid(
                icon: const Icon(
                  Icons.thermostat_sharp,
                  color: Colors.green,
                ),
                title: "30.0 °C",
                disc: "Temperature",
                width: (width - 15 - 20) / 2,
              ),
              SizedBox(
                width: 15,
              ),
              itemGrid(
                icon: const Icon(
                  Icons.battery_0_bar,
                  color: Colors.green,
                ),
                disc: "Voltage",
                title: "53.3 v",
                width: (width - 15 - 10) / 2,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              itemGrid(
                icon: const Icon(
                  Icons.recycling,
                  color: Colors.green,
                ),
                title: "0",
                disc: "Battery Cycles",
                width: (width - 15 - 20) / 2,
              ),
              SizedBox(
                width: 15,
              ),
              itemGrid(
                icon: const Icon(
                  Icons.medical_information_outlined,
                  color: Colors.green,
                ),
                disc: "State Of Health",
                title: "100 %",
                width: (width - 15 - 20) / 2,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget top() {
    Color greenColor = Color.fromARGB(255, 84, 221, 88);
    Color greenColor2 = Color(0xff94d500);
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: 180,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "71",
                      style: TextStyle(
                        fontSize: 130,
                        color: greenColor2,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: const Text(
                        "State Of Charge",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "%",
                    style: TextStyle(
                      fontSize: 40,
                      color: greenColor2,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            RotatedBox(
                quarterTurns: -1,
                child: Battery(
                  value: 71,
                  size: 100,
                  activeColor: Colors.yellow,
                ))
          ],
        ),
      ),
    );
  }

  Widget iconBike() {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.grey,
        shape: CircleBorder(),
      ),
      child: const Icon(
        Icons.directions_bike,
        color: Colors.greenAccent,
        size: 32,
      ),
      onPressed: () {},
    );
  }

  Widget distanceRemain(double? width) {
    return Container(
      width: width ?? 380,
      // height: 60,
      child: TextButton.icon(
        style: TextButton.styleFrom(
          elevation: 3, //Defines Elevation
          shadowColor: Colors.grey,
          textStyle: const TextStyle(color: Colors.red),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: () => {},
        icon: CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 212, 210, 210),
          child: IconButton(
            icon: const Icon(
              Icons.directions_bike,
              color: Colors.green,
            ),
            onPressed: () {},
          ),
        ),
        label: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "Distance Remaining",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Text(
                "39.3 KM",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemGrid(
      {required Widget icon,
      required String title,
      required String disc,
      double? width}) {
    Color greenColor2 = Color(0xff94d500);
    return Container(
      width: width ?? 190,
      height: 160,
      child: TextButton(
          style: TextButton.styleFrom(
            elevation: 3, //Defines Elevation
            shadowColor: Colors.grey,
            textStyle: const TextStyle(color: Colors.red),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          onPressed: () {
            if (disc == "Temperature") {
              DialogSetting.showDialogSetting(
                context: context,
                title: "Temperature",
                body: temper(),
              );
            }
            if (disc == "Voltage") {
              print("xxxxx");
              DialogSetting.showDialogSetting(
                context: context,
                title: "Cells Voltage",
                body: volta(),
              );
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 212, 210, 210),
                child: IconButton(
                  icon: icon,
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 35,
                  color: greenColor2,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                disc,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )),
    );
  }

  Widget temper() {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        LinearPercentIndicator(
          // width: 170.0,
          animation: true,
          animationDuration: 0,
          lineHeight: 20.0,
          leading: Text(
            "Zone 1",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Text(
            "29°C",
            style: TextStyle(color: Colors.grey),
          ),
          percent: 0.3,
          // center: Text("20.0%"),
          // linearStrokeCap: LinearStrokeCap.butt,
          progressColor: Colors.green,
          // linearStrokeCap: LinearStrokeCap.roundAll,
          barRadius: Radius.circular(40),
        ),
        SizedBox(
          height: 10,
        ),
        LinearPercentIndicator(
          // width: 170.0,
          animation: true,
          animationDuration: 0,
          lineHeight: 20.0,
          leading: Text(
            "Zone 2",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Text(
            "31°C",
            style: TextStyle(color: Colors.grey),
          ),
          percent: 0.3,
          // center: Text("20.0%"),
          // linearStrokeCap: LinearStrokeCap.butt,
          progressColor: Colors.green,
          // linearStrokeCap: LinearStrokeCap.roundAll,
          barRadius: Radius.circular(40),
        ),
        SizedBox(
          height: 10,
        ),
        LinearPercentIndicator(
          // width: 170.0,
          animation: true,
          animationDuration: 0,
          lineHeight: 20.0,
          leading: Text(
            "Zone 3",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Text(
            "30°C",
            style: TextStyle(color: Colors.grey),
          ),
          percent: 0.3,
          // center: Text("20.0%"),
          // linearStrokeCap: LinearStrokeCap.butt,
          progressColor: Colors.green,
          // linearStrokeCap: LinearStrokeCap.roundAll,
          barRadius: Radius.circular(40),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }

  Widget volta() {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Container(
      width: width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            linearPercentIndicator(
              title: "Cell 1",
              content: "3775 mv",
            ),
            SizedBox(height: 10),
            linearPercentIndicator(
              title: "Cell 2",
              content: "3772 mv",
            ),
            SizedBox(height: 10),
            linearPercentIndicator(
              title: "Cell 3",
              content: "3813 mv",
            ),
            SizedBox(height: 10),
            linearPercentIndicator(
              title: "Cell 4",
              content: "3817 mv",
            ),
            SizedBox(height: 10),
            linearPercentIndicator(
              title: "Cell 5",
              content: "3817 mv",
            ),
            SizedBox(height: 10),
            linearPercentIndicator(
              title: "Cell 6",
              content: "3815 mv",
            ),
            SizedBox(height: 10),
            linearPercentIndicator(
              title: "Cell 7",
              content: "3814 mv",
            ),
            SizedBox(height: 10),
            linearPercentIndicator(
              title: "Cell 8",
              content: "3813 mv",
            ),
            SizedBox(height: 10),
            linearPercentIndicator(
              title: "Cell 9",
              content: "3820 mv",
            ),
            SizedBox(height: 10),
            linearPercentIndicator(
              title: "Cell 10",
              content: "3806 mv",
            ),
            SizedBox(height: 10),
            linearPercentIndicator(
              title: "Cell 11",
              content: "3818 mv",
            ),
            SizedBox(height: 10),
            linearPercentIndicator(
              title: "Cell 12",
              content: "3820 mv",
            ),
            SizedBox(height: 10),
            linearPercentIndicator(
              title: "Cell 13",
              content: "3822 mv",
            ),
            SizedBox(height: 10),
            linearPercentIndicator(
              title: "Cell 14",
              content: "3817 mv",
            ),
          ],
        ),
      ),
    );
  }

  Widget linearPercentIndicator(
      {required String title, required String content}) {
    return LinearPercentIndicator(
      // width: width - 240,
      animation: true,
      animationDuration: 0,
      lineHeight: 20.0,
      leading: SizedBox(
        width: 50,
        child: Text(
          title,
          style: const TextStyle(color: Colors.grey),
        ),
      ),
      trailing: SizedBox(
        width: 60,
        child: Text(
          content,
          style: const TextStyle(color: Colors.grey),
        ),
      ),
      percent: 0.9,
      // center: Text("20.0%"),
      // linearStrokeCap: LinearStrokeCap.butt,
      progressColor: Colors.orange,
      // linearStrokeCap: LinearStrokeCap.roundAll,
      barRadius: const Radius.circular(40),
    );
  }
}
