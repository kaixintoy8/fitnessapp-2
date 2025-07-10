import 'package:fitnessapp/bottombar_pages/profile.dart';
import 'package:fitnessapp/bottombar_pages/qr.dart';
import 'package:fitnessapp/bottombar_pages/workout.dart';
import 'package:fitnessapp/bottombar_pages/discover.dart';
import 'package:fitnessapp/views/for_u_cards/foru_first_card.dart';
import 'package:fitnessapp/views/for_u_cards/foru_third_card.dart';
import 'package:fitnessapp/views/latest_seen_card.dart';
import 'package:fitnessapp/views/nearby_card.dart';
import 'package:flutter/material.dart';

class ForU extends StatefulWidget {
  const ForU({super.key});

  @override
  State<ForU> createState() => _ForUState();
}

class _ForUState extends State<ForU> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Başlık
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  "For U",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.favorite, color: Colors.green, size: 25),
              ],
            ),
          ),
          // ForuFirstCard'lar
          SizedBox(
            height: 185,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:[ SizedBox(width: 10),
              ForuFirstCard(imgUrl:"images/foru.jpg"),
              SizedBox(width: 10),
              ForuFirstCard(imgUrl:"images/foru2.jpg"),
              SizedBox(width: 10),
              ForuFirstCard(imgUrl:"images/foru3.jpg"),]
            ),
          ),

          SizedBox(height: 20),
          // "Latest Seen" başlık
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Exclusive partners",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Color(0xFF62D794), fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          // NearbyCard'lar 
          SizedBox(
            height: 185,
            child: ListView(
              scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 10),
                  NearbyCard(
                    imgUrl: "images/exclusive_first.jpg",
                    name: "Super Gym",
                    topTitle: "Gym",
                    color: Colors.green,
                  ),
                  SizedBox(width: 10),
                  NearbyCard(
                    imgUrl: "images/exclusive_second.jpg",
                    name: "Silver Star Fitness",
                    topTitle: "Gym",
                    color: Colors.green,
                  ),
                  SizedBox(width: 10),
                  NearbyCard(
                    imgUrl: "images/exclusive_third.jpg",
                    name: "Gym Ultra",
                    topTitle: "Gym",
                    color: Colors.green,
                  ),
                ],
            ),
          ),
          SizedBox(height: 20),
          // "Latest Seen" başlık
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Upcoming Events",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Color(0xFF62D794), fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 282,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [ 
                ForuThirdCard(imgUrl: "images/upcoming_first.png"),
                ForuThirdCard(imgUrl: "images/upcoming_second.png"),
                ForuThirdCard(imgUrl: "images/upcoming_third.png"),
              ]
            ),
          ),
          SizedBox(height: 20,),
          // "Discount" başlık
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Discount",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Color(0xFF62D794), fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 185,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:[ LatestSeenCard(imgUrl: "images/discounts_first.png", name: "Super Gym"),
                SizedBox(width: 10,),
                LatestSeenCard(imgUrl: "images/discounts_second.png", name: "Silver star fitness"),
                SizedBox(width: 10,),
                LatestSeenCard(imgUrl: "images/f2.png", name: "Gym Ultra"),]
              ),
            ),
          ),
          SizedBox(height: 20,),
           // "Specials" başlık
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Specials",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Color(0xFF62D794), fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                  children: [
                    LatestSeenCard(imgUrl: "images/specials_first.png", name: "Super Gym"),
                    SizedBox(width: 10,),
                    LatestSeenCard(imgUrl: "images/specials_second.png", name: "Silver star fitness"),
                    SizedBox(width: 10,),
                    LatestSeenCard(imgUrl: "images/specials_third.png", name: "Gym Ultra")
                  ],
              ),
            ),
          ),
        ],
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
