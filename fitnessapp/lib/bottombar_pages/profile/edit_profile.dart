import 'package:fitnessapp/bottombar_pages/discover/discover.dart';
import 'package:fitnessapp/bottombar_pages/for_u.dart';
import 'package:fitnessapp/bottombar_pages/profile/profile.dart';
import 'package:fitnessapp/bottombar_pages/qr.dart';
import 'package:fitnessapp/bottombar_pages/workout.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {    
  int selectedIndex=4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text("Profile"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
          child: Column(
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF252525),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Icon(Icons.person,color: Color(0xFFBDBDBD),),
                      SizedBox(width: 10,),
                      Text("Khanim Jafarzade",style: TextStyle(color: Color(0xFFF2F2F2)),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF252525),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Icon(Icons.mail,color: Color(0xFFBDBDBD),),
                      SizedBox(width: 10,),
                      Text("Willanderson@gmail.com",style: TextStyle(color: Color(0xFFF2F2F2)),),
                    ],
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                height: 60,
                width: 450,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF62D794),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  onPressed: (){
                  }, 
                  child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),
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