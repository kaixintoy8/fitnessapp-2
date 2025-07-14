import 'package:fitnessapp/bottombar_pages/discover/discover.dart';
import 'package:fitnessapp/bottombar_pages/for_u.dart';
import 'package:fitnessapp/bottombar_pages/profile/profile.dart';
import 'package:fitnessapp/bottombar_pages/qr.dart';
import 'package:fitnessapp/bottombar_pages/workout.dart';
import 'package:flutter/material.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  int selectedIndex = 4;
  List<bool> isExpandedList = [false, false, false, false];
  List<bool> secondExpandedList = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Help & Support", style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Top Questions",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  color: Color(0xFF252525),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "What is Push30?",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        trailing: IconButton(
                          icon: isExpandedList[0]
                              ? Icon(Icons.expand_less, color: Colors.white)
                              : Icon(Icons.expand_more, color: Colors.white),
                          onPressed: () {
                            setState(() {
                              isExpandedList[0] = !isExpandedList[0];
                            });
                          },
                        ),
                      ),
                      if (isExpandedList[0])
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFF252525),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          child: Text(
                            "A frequently asked questions (FAQ) forum is often used in articles, websites, email lists, and online forums where common questions tend to recur, for example through posts or queries by new users related to common knowledge gaps.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 18,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  color: Color(0xFF252525),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "Can I train offline?",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        trailing: IconButton(
                          icon: isExpandedList[1]
                              ? Icon(Icons.expand_less, color: Colors.white)
                              : Icon(Icons.expand_more, color: Colors.white),
                          onPressed: () {
                            setState(() {
                              isExpandedList[1] = !isExpandedList[1];
                            });
                          },
                        ),
                      ),
                      if (isExpandedList[1])
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFF252525),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          child: Text(
                            "A frequently asked questions (FAQ) forum is often used in articles, websites, email lists, and online forums where common questions tend to recur, for example through posts or queries by new users related to common knowledge gaps.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 18,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  color: Color(0xFF252525),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "Can I train with an injury issue?",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        trailing: IconButton(
                          icon: isExpandedList[2]
                              ? Icon(Icons.expand_less, color: Colors.white)
                              : Icon(Icons.expand_more, color: Colors.white),
                          onPressed: () {
                            setState(() {
                              isExpandedList[2] = !isExpandedList[2];
                            });
                          },
                        ),
                      ),
                      if (isExpandedList[2])
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFF252525),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          child: Text(
                            "A frequently asked questions (FAQ) forum is often used in articles, websites, email lists, and online forums where common questions tend to recur, for example through posts or queries by new users related to common knowledge gaps.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 18,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  color: Color(0xFF252525),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "How to proceed to the next workout?",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        trailing: IconButton(
                          icon: isExpandedList[3]
                              ? Icon(Icons.expand_less, color: Colors.white)
                              : Icon(Icons.expand_more, color: Colors.white),
                          onPressed: () {
                            setState(() {
                              isExpandedList[3] = !isExpandedList[3];
                            });
                          },
                        ),
                      ),
                      if (isExpandedList[3])
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFF252525),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          child: Text(
                            "A frequently asked questions (FAQ) forum is often used in articles, websites, email lists, and online forums where common questions tend to recur, for example through posts or queries by new users related to common knowledge gaps.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 18,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Related Questions",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  color: Color(0xFF252525),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "How can I play workout videos?",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        trailing: IconButton(
                          icon: secondExpandedList[0]
                              ? Icon(Icons.expand_less, color: Colors.white)
                              : Icon(Icons.expand_more, color: Colors.white),
                          onPressed: () {
                            setState(() {
                              secondExpandedList[0] = !secondExpandedList[0];
                            });
                          },
                        ),
                      ),
                      if (secondExpandedList[0])
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFF252525),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          child: Text(
                            "A frequently asked questions (FAQ) forum is often used in articles, websites, email lists, and online forums where common questions tend to recur, for example through posts or queries by new users related to common knowledge gaps.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 18,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  color: Color(0xFF252525),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "Is the app free?",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        trailing: IconButton(
                          icon: secondExpandedList[1]
                              ? Icon(Icons.expand_less, color: Colors.white)
                              : Icon(Icons.expand_more, color: Colors.white),
                          onPressed: () {
                            setState(() {
                              secondExpandedList[1] = !secondExpandedList[1];
                            });
                          },
                        ),
                      ),
                      if (secondExpandedList[1])
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFF252525),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          child: Text(
                            "A frequently asked questions (FAQ) forum is often used in articles, websites, email lists, and online forums where common questions tend to recur, for example through posts or queries by new users related to common knowledge gaps.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 18,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  color: Color(0xFF252525),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "Can I train offline?",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        trailing: IconButton(
                          icon: secondExpandedList[2]
                              ? Icon(Icons.expand_less, color: Colors.white)
                              : Icon(Icons.expand_more, color: Colors.white),
                          onPressed: () {
                            setState(() {
                              secondExpandedList[2] = !secondExpandedList[2];
                            });
                          },
                        ),
                      ),
                      if (secondExpandedList[2])
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFF252525),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          child: Text(
                            "A frequently asked questions (FAQ) forum is often used in articles, websites, email lists, and online forums where common questions tend to recur, for example through posts or queries by new users related to common knowledge gaps.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 18,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  color: Color(0xFF252525),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "Can I train with an injury issue?",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        trailing: IconButton(
                          icon: secondExpandedList[3]
                              ? Icon(Icons.expand_less, color: Colors.white)
                              : Icon(Icons.expand_more, color: Colors.white),
                          onPressed: () {
                            setState(() {
                              secondExpandedList[3] = !secondExpandedList[3];
                            });
                          },
                        ),
                      ),
                      if (secondExpandedList[3])
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFF252525),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          child: Text(
                            "A frequently asked questions (FAQ) forum is often used in articles, websites, email lists, and online forums where common questions tend to recur, for example through posts or queries by new users related to common knowledge gaps.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 18,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
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
