import 'package:fitnessapp/bottombar_pages/discover/see_on_map.dart';
import 'package:fitnessapp/bottombar_pages/for_u.dart';
import 'package:fitnessapp/bottombar_pages/profile/profile.dart';
import 'package:fitnessapp/bottombar_pages/qr.dart';
import 'package:fitnessapp/bottombar_pages/workout.dart';
import 'package:fitnessapp/bottombar_pages/discover/gym_detail.dart';
import 'package:fitnessapp/bottombar_pages/discover/notifications_page.dart';
import 'package:fitnessapp/bottombar_pages/discover/search_page.dart';
import 'package:fitnessapp/views/choose_card.dart';
import 'package:fitnessapp/views/latest_seen_card.dart';
import 'package:fitnessapp/views/nearby_card.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  int selectedIndex=0;
  String img="images/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 10,top: 50,right: 10,bottom: 100),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    child: Row( //search ve notification 
                      children: [
                        Expanded(
                          flex: 11,
                          child:Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 30,
                              width: 200,
                              child: Image.asset("images/appname.png"))),
                          ),
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationsPage()));
                            },
                            child: Container(
                              height: 30,
                              child: Image.asset("images/notifications.png",fit: BoxFit.scaleDown,)),
                          )),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchPage()));
                            }, 
                            icon: Icon(Icons.search,color: Colors.white,)))
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ChooseCard(imgUrl: "${img}fitness.png", name: "Fitness", colors:Color(0xFF1f3a2d),),
                          SizedBox(width: 15,),
                          ChooseCard(imgUrl: "${img}yoga.png", name: "Women", colors:Color.fromARGB(82, 246, 207, 66)),
                          SizedBox(width: 15,),
                          ChooseCard(imgUrl: "${img}sale.png", name: "Discount", colors:Color.fromARGB(101, 23, 134, 231)),
                          SizedBox(width: 15,),
                          ChooseCard(imgUrl: "${img}swim.png", name: "Pool", colors:Color.fromARGB(92, 254, 119, 98)),
                          SizedBox(width: 15,),
                          ChooseCard(imgUrl: "${img}group.png", name: "Martial Art", colors: Color.fromARGB(71, 38, 220, 220)),
                          SizedBox(width: 15,),
                          ChooseCard(imgUrl: "${img}pilates.png", name: "Pilates", colors: Color.fromARGB(88, 117, 66, 246)),
                          SizedBox(width: 15,),
                          ChooseCard(imgUrl: "${img}sonyoga.png", name: "Yoga", colors: Color.fromARGB(117, 254, 119, 98)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Text("Latest seen",style: TextStyle(color: Colors.white,fontSize: 22),)),
                      Expanded(
                        flex: 1,
                        child: Text("See all",style: TextStyle(color: Color(0xFF62D794),fontSize: 15),))
                    ],
                  ),
                  SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>GymDetail()));
                          },
                          child: 
                        LatestSeenCard(imgUrl: "${img}f1.png", name: "The Club")),
                        SizedBox(width: 10,),
                        LatestSeenCard(imgUrl: "${img}f2.png", name: "Silver star fitness"),
                        SizedBox(width: 10,),
                        LatestSeenCard(imgUrl: "${img}f1.png", name: "Gym Ultra")
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 150,
                    width: 420,
                    decoration: BoxDecoration(
                    color: Color(0xFF252525),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5.0,left: 10),
                            child: CircleAvatar(
                              backgroundColor:Color(0xFFFE7762),
                              radius: 50,
                              child: SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset("${img}alarm.png",fit: BoxFit.cover,)),
                            )
                          ),
                        ),
                        Flexible(
                          flex: 5,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 25.0),
                                      child: Text("Dear user",style: TextStyle(color: Colors.white,fontSize: 20),),
                                    )),
                                    SizedBox(height: 5,),
                                  Container(
                                    height: 75,
                                    width: 300,
                                    child: Text("Due to the restrictions due to the pandemic, it is recommended to check the number of available seats when choosing a gym.",style: TextStyle(color: Colors.grey),)
                                    ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Nearby",style: TextStyle(color: Colors.white,fontSize: 22),)
                  ),
                  NearbyCard(imgUrl: "images/discoverf1.png", name: "Silver Star Fitness", topTitle: "Gym", color: Colors.green),
                  NearbyCard(imgUrl: "images/discoverf2.png", name: "Gym Ultra", topTitle: "Fitness", color: Colors.amber),
                  NearbyCard(imgUrl: "images/f2.png", name: "Super Gym", topTitle: "Yoga", color: Colors.deepPurple),
                  NearbyCard(imgUrl: "images/discoverf4.png", name: "The Club", topTitle: "Gym", color: Colors.blue),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ),
          Positioned(
            left: 145,
            right: 145,
            bottom: 20,
            child:  ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF62D78F),
                padding: EdgeInsets.symmetric(horizontal: 24,vertical: 25)
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeOnMap()));
              }, 
              icon: Icon(Icons.location_on,color: Colors.white,size: 30,),
              label: Text(
                "See on map",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                  ),
                )
              ),)
        ],
      ),
      bottomNavigationBar:
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
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
        )
    );
    
  }
  Widget buildNavItem(int index, IconData icon, String label) {
    bool isSelected =selectedIndex ==index;
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
        icon: Icon(icon, size: 32, color: isSelected ? Colors.green : Color(0xFF4F4F4F)),
      ),
      Text(label, style: TextStyle(color:isSelected ? Colors.green : Color(0xFF4F4F4F))),
    ],
  );
}

}

