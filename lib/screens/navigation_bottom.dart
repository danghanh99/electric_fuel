import 'package:bottom_nav_layout/bottom_nav_layout.dart';
import 'package:electri_fuel/resource/gradient_text.dart';
import 'package:electri_fuel/screens/home_screen.dart';
import 'package:electri_fuel/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class NavigationBottom extends StatefulWidget {
  NavigationBottom({Key? key}) : super(key: key);

  @override
  State<NavigationBottom> createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {
  int currentScreen = 1;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: sidebar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('./assets/images/electriFuel.png'),
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            _key.currentState!.openDrawer();
          },
          child: const Icon(
            Icons.menu,
            color: Colors.green,
          ),
        ),
        actions: [
          Transform.translate(
            offset: const Offset(-7, 0),
            child: const Icon(
              Icons.bluetooth_audio,
              color: Colors.orange,
            ),
          )
        ],
      ),
      body: BottomNavLayout(
        pages: [
          (_) => HomeScreen(),
          (_) => HomeScreen(),
          (_) => SettingsScreen(),
        ],
        bottomNavigationBar: (currentIndex, onTap) => BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => onTap(index),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: currentIndex == 0 ? Colors.green : null,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on_outlined,
                  color: currentIndex == 1 ? Colors.green : null,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: currentIndex == 2 ? Colors.green : null,
                ),
                label: ''),
          ],
        ),
      ),
    );
  }

  Widget sidebar() {
    return Drawer(
      child: Column(
        children: [
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Color.fromARGB(255, 41, 140, 40),
                      child: Text(
                        "H",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 36,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'HyperX',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    Text(
                      'raman@hyperxenergy.com',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Battery List",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    Icon(
                      Icons.refresh,
                      color: Colors.black45,
                    )
                  ],
                ),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: Container(
                  color: true ? Color.fromARGB(255, 193, 226, 202) : null,
                  child: ListTile(
                    title: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 35,
                          ),
                          child: Icon(
                            Icons.check,
                            color: true ? Colors.green : Colors.black45,
                          ),
                        ),
                        Text(
                          "9EA59681",
                          style: TextStyle(
                            color: true ? Colors.green : Colors.black45,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: Container(
                  child: ListTile(
                    title: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 35,
                          ),
                          child: Icon(
                            Icons.battery_full,
                            color: Colors.black45,
                          ),
                        ),
                        Text(
                          "2B0A1440",
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                child: Column(
                  children: const <Widget>[
                    Divider(),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: ListTile(
                          leading: Icon(
                            Icons.exit_to_app,
                            color: Colors.black45,
                          ),
                          title: Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
