import 'package:electri_fuel/resource/switch_me.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
    bool isChecked = false;
    return SingleChildScrollView(
      child: Column(
        children: [
          batteryOption(width),
          profile(width),
          about(width),
          share(width),
        ],
      ),
    );
  }

  Widget batteryOption(double width) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 15,
              bottom: 5,
            ),
            child: Text(
              "Battery Options",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: width ?? 190,
            height: 50,
            child: TextButton(
                style: TextButton.styleFrom(
                  elevation: 3, //Defines Elevation
                  shadowColor: Colors.grey,
                  textStyle: const TextStyle(color: Colors.red),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Battery Power",
                      style: TextStyle(
                        // fontSize: 35,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Center(child: SwitchWidget()),
                        SizedBox(
                          width: 50,
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          Container(
            width: width ?? 190,
            height: 50,
            child: TextButton(
                style: TextButton.styleFrom(
                  elevation: 3, //Defines Elevation
                  shadowColor: Colors.grey,
                  textStyle: const TextStyle(color: Colors.red),
                  backgroundColor: Color.fromARGB(255, 144, 214, 90),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Battery Status",
                      style: TextStyle(
                        fontSize: 12,
                        color: true ? Colors.white : Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          "Working Properly",
                          style: TextStyle(
                            fontSize: 12,
                            color: true ? Colors.white : Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Icon(
                          Icons.battery_full,
                          color: true ? Colors.white : Colors.grey,
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget profile(double width) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 15,
              bottom: 5,
            ),
            child: Text(
              "Profile",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          item(
            icon: Transform(
              //Wrap your widget with the Transform widget
              alignment: Alignment.center, //Default is left
              transform: Matrix4.rotationY(math.pi), //Mirror Widget
              child: const Icon(
                Icons.arrow_back,
                color: Colors.green,
              ), //Your widget
            ),
            title: "Theme",
            width: width,
          ),
          item(
            icon: Transform(
              //Wrap your widget with the Transform widget
              alignment: Alignment.center, //Default is left
              transform: Matrix4.rotationY(math.pi), //Mirror Widget
              child: const Icon(
                Icons.arrow_back,
                color: Colors.green,
              ), //Your widget
            ),
            title: "Change Password",
            width: width,
          ),
          item(
            icon: Transform(
              //Wrap your widget with the Transform widget
              alignment: Alignment.center, //Default is left
              transform: Matrix4.rotationY(math.pi), //Mirror Widget
              child: const Icon(
                Icons.arrow_back,
                color: Colors.green,
              ), //Your widget
            ),
            title: "Logout",
            width: width,
          ),
        ],
      ),
    );
  }

  Widget about(double width) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 15,
              bottom: 5,
            ),
            child: Text(
              "About",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          item(
            icon: Transform(
              //Wrap your widget with the Transform widget
              alignment: Alignment.center, //Default is left
              transform: Matrix4.rotationY(math.pi), //Mirror Widget
              child: const Icon(
                Icons.arrow_back,
                color: Colors.green,
              ), //Your widget
            ),
            title: "Privacy",
            width: width,
          ),
          item(
            icon: Transform(
              //Wrap your widget with the Transform widget
              alignment: Alignment.center, //Default is left
              transform: Matrix4.rotationY(math.pi), //Mirror Widget
              child: const Icon(
                Icons.arrow_back,
                color: Colors.green,
              ), //Your widget
            ),
            title: "About Us",
            width: width,
          ),
        ],
      ),
    );
  }

  Widget share(double width) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 15,
              bottom: 5,
            ),
            child: Text(
              "Share",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          item(
            icon: const Icon(
              Icons.share,
              color: Colors.green,
            ),
            title: "Share the App",
            width: width,
          ),
          // ListView(
          //   shrinkWrap: false,
          //   padding: EdgeInsets.zero,
          //   children: [
          //     item(
          //       icon: const Icon(
          //         Icons.share,
          //         color: Colors.green,
          //       ),
          //       title: "Share the App",
          //       width: width,
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget item({
    required Widget icon,
    required String title,
    double? width,
  }) {
    return Container(
      width: width ?? 190,
      height: 50,
      child: TextButton(
          style: TextButton.styleFrom(
            elevation: 3, //Defines Elevation
            shadowColor: Colors.grey,
            textStyle: const TextStyle(color: Colors.red),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 65,
                ),
                child: icon,
              ),
            ],
          )),
    );
  }
}
