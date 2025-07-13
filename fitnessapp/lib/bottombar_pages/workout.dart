import 'package:fitnessapp/bottombar_pages/discover/discover.dart';
import 'package:fitnessapp/bottombar_pages/for_u.dart';
import 'package:fitnessapp/bottombar_pages/profile/profile.dart';
import 'package:fitnessapp/bottombar_pages/qr.dart';
import 'package:fitnessapp/views/workout_card.dart';
import 'package:flutter/material.dart';

class Workout extends StatefulWidget {
  const Workout({super.key});

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  int selectedIndex=3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 30,bottom: 20),
            child: Row(
              children: [
                Text(
                  "Workout",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 25,
                  width: 25,
                  child: Image.asset("images/arm.png",fit: BoxFit.contain,))
              ],
            ),
          ),
          Container(
            height: 400,
            width: 500,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/workout.png"),fit: BoxFit.cover)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 235,
                    child: Text("Morning workouts  with Khanim Jafarzade",style: TextStyle(color: Colors.white,fontSize: 22),)),
                    Row( //circle avatarla yan yana durması için
                      children: [
                        Column(// içindeki üç satır için
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(//il satırdaki yan yana olanlar için
                              children: [
                              Icon(Icons.video_camera_back_outlined,color: Color(0xFFFE7762),),
                              SizedBox(width: 10,),
                              Text("20:12",style: TextStyle(color: Color(0xFFFE7762)),),
                              SizedBox(width: 10,),
                              Container(
                                height: 3,
                                width: 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text("120 watching",style: TextStyle(color: Color(0xFFF2F2F2)),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text("Khanim Jafarzade",style: TextStyle(color: Colors.white,fontSize: 10),),
                          SizedBox(height: 5,),
                          Text("Fitness Instructor",style: TextStyle(color: Color(0xFFBDBDBD),fontSize: 10),),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right:20.0),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Color(0xFF62D794),
                            child: Icon(Icons.play_arrow,color: Colors.white,size: 40,),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 8,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(118, 98, 215, 149),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: Color(0xFF333333),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: Color(0xFF333333),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              ),
            ),  
          ),








          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.all(10),
          child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Continue to watching",style:TextStyle(color: Colors.white,fontSize: 20),)),
              ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  WorkoutCard(imgUrl: "images/foru3.jpg"),
                  WorkoutCard(imgUrl: "images/continue_second.png"),
                  WorkoutCard(imgUrl: "images/continue_third.png")
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Discover More",style:TextStyle(color: Colors.white,fontSize: 20),)),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  WorkoutCard(imgUrl: "images/exclusive_second.jpg"),
                  WorkoutCard(imgUrl: "images/foru2.jpg"),
                  WorkoutCard(imgUrl: "images/discover_more_third.png")
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Trending",style:TextStyle(color: Colors.white,fontSize: 20),)),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  WorkoutCard(imgUrl: "images/trending_first.png"),
                  WorkoutCard(imgUrl: "images/trending_second.png"),
                  WorkoutCard(imgUrl: "images/trending_third.png")
                ],
              ),
            ),
          ),
          
            ],
          ),
          )
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