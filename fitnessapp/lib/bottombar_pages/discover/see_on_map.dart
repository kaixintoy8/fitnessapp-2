import 'package:fitnessapp/bottombar_pages/discover/discover.dart';
import 'package:fitnessapp/bottombar_pages/discover/notifications_page.dart';
import 'package:fitnessapp/bottombar_pages/discover/search_page.dart';
import 'package:fitnessapp/bottombar_pages/for_u.dart';
import 'package:fitnessapp/bottombar_pages/profile/profile.dart';
import 'package:fitnessapp/bottombar_pages/qr.dart';
import 'package:fitnessapp/bottombar_pages/workout.dart';
import 'package:flutter/material.dart';

class SeeOnMap extends StatefulWidget {
  const SeeOnMap({super.key});

  @override
  State<SeeOnMap> createState() => _SeeOnMapState();
}

class _SeeOnMapState extends State<SeeOnMap> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 50, right: 10),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    child: Row(
                      //search ve notification
                      children: [
                        Expanded(
                          flex: 11,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 30,
                              width: 200,
                              child: Image.asset("images/appname.png"),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NotificationsPage(),
                                ),
                              );
                            },
                            child: Container(
                              height: 30,
                              child: Image.asset(
                                "images/notifications.png",
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchPage(),
                                ),
                              );
                            },
                            icon: Icon(Icons.search, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: const Color.fromARGB(134, 101, 99, 99),
                              ),
                            ),
                            color: Colors.black,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                child: Image.asset(
                                  "images/popular.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Popular",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                child: Image.asset(
                                  "images/filters.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Filters",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        height: 1200,
                        width: 470,
                        child: Image.asset(
                          "images/fullmap.png",
                          fit: BoxFit.cover,
                        ),
                      ),

                      Positioned(
                        left: 110,
                        top: 210,
                        child: Icon(
                          Icons.radio_button_checked_outlined,
                          color: Color(0xFF62D794),
                          size: 30,
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 330,
                        child: Icon(
                          Icons.radio_button_checked_outlined,
                          color: Color(0xFF62D794),
                          size: 30,
                        ),
                      ),
                      Positioned(
                        left: 230,
                        top: 270,
                        child: Icon(
                          Icons.radio_button_checked_outlined,
                          color: Color(0xFF62D794),
                          size: 30,
                        ),
                      ),
                      Positioned(
                        right: 55,
                        top: 210,
                        child: Icon(
                          Icons.radio_button_checked_outlined,
                          color: Color(0xFF62D794),
                          size: 30,
                        ),
                      ),
                      Positioned(
                        right: 55,
                        top: 350,
                        child: Icon(
                          Icons.radio_button_checked_outlined,
                          color: Color(0xFF62D794),
                          size: 30,
                        ),
                      ),
                      Positioned(
                        right: 180,
                        top: 440,
                        child: Icon(
                          Icons.radio_button_checked_outlined,
                          color: Color(0xFF62D794),
                          size: 30,
                        ),
                      ),
                      Positioned(
                        left: 125,
                        top: 500,
                        child: Icon(
                          Icons.radio_button_checked_outlined,
                          color: Colors.orange,
                          size: 30,
                        ),
                      ),
                      Positioned(
                        left: 250,
                        top: 670,
                        child: Icon(
                          Icons.radio_button_checked_outlined,
                          color: Color(0xFF62D794),
                          size: 30,
                        ),
                      ),
                      Positioned(
                        right: 60,
                        bottom: 250,
                        child: Icon(
                          Icons.radio_button_checked_outlined,
                          color: Color(0xFF62D794),
                          size: 30,
                        ),
                      ),
                      Positioned(
                        left: 60,
                        bottom: 330,
                        child: Icon(
                          Icons.radio_button_checked_outlined,
                          color: Color(0xFF62D794),
                          size: 30,
                        ),
                      ),
                      Positioned(
                        left: 80,
                        bottom: 180,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF62D794),
                          child: Text(
                            "12",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 60,
                        bottom: 415,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF62D794),
                          child: Text(
                            "3",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        bottom: 545,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF62D794),
                          child: Text(
                            "7",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 60,
                        top: 550,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF62D794),
                          child: Text(
                            "2",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 150,
                        top: 350,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF62D794),
                          child: Text(
                            "2",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 240,
                        top: 550,
                        child: Icon(Icons.circle, color: Colors.blue, size: 30),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 145,
            right: 145,
            child: SizedBox(
              height: 60,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF62D794),
                ),
                onPressed: () {},
                icon: Icon(Icons.list_alt, size: 25, color: Colors.white),
                label: GestureDetector(
                  onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => DiscoverPage()),
                    );
                  },
                  child: Text(
                    "Back to list",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        child: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildNavItem(0, Icons.search, "Discover"),
              buildNavItem(1, Icons.sell_outlined, "For u"),
              buildNavItem(2, Icons.qr_code_2_sharp, "QR"),
              buildNavItem(3, Icons.play_circle_outline, "Workout"),
              buildNavItem(4, Icons.person, "Profile"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavItem(int index, IconData icon, String label) {
    bool isSelected = selectedIndex == index;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {
            // sayfa geçişi
            switch (index) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DiscoverPage()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForU()),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Qr()),
                );
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Workout()),
                );
                break;
              case 4:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
                break;
            }
          },
          icon: Icon(
            icon,
            size: 32,
            color: isSelected ? Colors.green : Color(0xFF4F4F4F),
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.green : Color(0xFF4F4F4F),
          ),
        ),
      ],
    );
  }
}


/*

*/