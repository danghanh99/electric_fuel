import 'package:flutter/material.dart';

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
    return Column(
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
    );
  }

  Widget top() {
    Color greenColor = Color.fromARGB(255, 84, 221, 88);
    Color greenColor2 = Color(0xff94d500);
    return Container(
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
                  const Text(
                    "State Of Charge",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w200,
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
          Icon(
            Icons.battery_3_bar_outlined,
            color: Colors.yellow,
            size: 130,
          )
        ],
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
          onPressed: () {},
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
}
