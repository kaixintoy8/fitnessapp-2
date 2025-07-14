import 'package:fitnessapp/bottombar_pages/discover/discover.dart';
import 'package:fitnessapp/bottombar_pages/for_u.dart';
import 'package:fitnessapp/bottombar_pages/profile/profile.dart';
import 'package:fitnessapp/bottombar_pages/workout.dart';
import 'package:fitnessapp/views/qr_card.dart';
import 'package:flutter/material.dart';

class Qr extends StatefulWidget {
  const Qr({super.key});

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  int selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 306,
              color: Color(0xFF252525),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Package",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 76,
                          width: 140,
                          child: Text(
                            "Standart Monthly",
                            style: TextStyle(
                              color: Color(0xFF62D794),
                              fontSize: 25,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF62D794),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Color(0xFF4F4F4F),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xFF4F4F4F),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "View package details",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "History",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 500,
              child: ListView(
                children: [
                  QrCard(name: "Sliver Star Fitness"),
                  SizedBox(height: 20),
                  QrCard(name: "Gym Ultra"),
                  SizedBox(height: 20),
                  QrCard(name: "Super Gym"),
                  SizedBox(height: 20),
                  QrCard(name: "The Gym"),
                  SizedBox(height: 20),
                  QrCard(name: "The Gym"),
                ],
              ),
            ),
          ],
        ),
      ),

      backgroundColor: Colors.black,
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
