import 'package:fitnessapp/bottombar_pages/for_u.dart';
import 'package:fitnessapp/bottombar_pages/qr.dart';
import 'package:fitnessapp/bottombar_pages/workout.dart';
import 'package:fitnessapp/bottombar_pages/discover.dart';
import 'package:fitnessapp/models/profiles.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int selectedIndex=4;
  final List<MyListItem> itemLlist=[
    MyListItem(icon: Icons.person, title: "Edit Profile"),
    MyListItem(icon: Icons.perm_contact_calendar_sharp, title: "Edit Personal Informations"),
    MyListItem(icon: Icons.my_library_books_rounded, title: "History"),
    MyListItem(icon: Icons.favorite, title: "Favorites")
  ];
  final List<MySecondList> secondList=[
    MySecondList(icon: Icons.settings, title: "App Settings"),
    MySecondList(icon: Icons.language_rounded, title: "Language"),
  ];
  final List<MyThirdList> thirdList=[
    MyThirdList(icon: Icons.help, title: "help and Support"),
    MyThirdList(icon: Icons.info_rounded, title: "About Us"),
    MyThirdList(icon: Icons.lock, title: "Privacy Policy"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    CircleAvatar(
                    backgroundImage: AssetImage("images/profile.png"),
                    radius: 55,
                  ),
                  Positioned(
                    top: 70,
                    left: 70,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xFF4F4F4F),
                      child: Icon(Icons.camera_alt_outlined,color: Color(0xFFBDBDBD),),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text("Khanim Jafarzade",style: TextStyle(color: Colors.white,fontSize: 20),),
              SizedBox(height: 10,),
              Text("Push30 Company",style: TextStyle(color: Color(0xFF828282),fontSize: 17),),
              SizedBox(height: 30,),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green,
                          child: Icon(Icons.timer,color: Colors.white,),
                        ),
                        SizedBox(height: 10,),
                        Text("420",style: TextStyle(color: Colors.white,fontSize: 20),),
                        SizedBox(height: 10,),
                        Text("Overall visites",style: TextStyle(color: Color(0xFF828282)),),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.yellow,
                          child: Icon(Icons.star,color: Colors.white,),
                        ),
                        SizedBox(height: 10,),
                        Text("32",style: TextStyle(color: Colors.white,fontSize: 20),),
                        SizedBox(height: 10,),
                        Text("Places visited",style: TextStyle(color: Color(0xFF828282)),)
                      ],
                    )
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xFFFE7762),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("images/vector.png",fit: BoxFit.cover,),
                          )
                        ),
                        SizedBox(height: 10,),
                        Text("4/15",style: TextStyle(color: Colors.white,fontSize: 20),),
                        SizedBox(height: 10,),
                        Text("Badge Collected",style: TextStyle(color: Color(0xFF828282)),)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text("Account",style: TextStyle(color: Color(0xFF828282),fontSize: 20),),
              Column(
                children: itemLlist.map((item){
                    return ListTile(
                      leading: Icon(item.icon,color: Colors.green,),
                      title: Text(item.title,style: TextStyle(color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                      onTap: () {
                      },
                    );
                  }).toList(),
              ),
              SizedBox(height: 20,),
              Text("General",style: TextStyle(color: Color(0xFF828282),fontSize: 20),),
              SizedBox(height: 20,),
              Column(
                children: secondList.map((item){
                  return ListTile(
                    leading: Icon(item.icon,color: Colors.green,),
                    title: Text(item.title,style: TextStyle(color: Colors.white),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                    onTap: () {
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 20,),
              Text("About",style: TextStyle(color: Color(0xFF828282),fontSize: 20),),
              SizedBox(height: 20,),
              Column(
                children: thirdList.map((item){
                  return ListTile(
                    leading: Icon(item.icon,color: Colors.green,),
                    title: Text(item.title,style: TextStyle(color: Colors.white),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                    onTap: () {
                    },
                  );
                }).toList(),
              ),
              ListTile(
                leading: Icon(Icons.arrow_circle_left,color: Colors.red,),
                title: Text("Log Out",style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                onTap: () {
                  
                },
              )
            ],
          ),
        ),
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