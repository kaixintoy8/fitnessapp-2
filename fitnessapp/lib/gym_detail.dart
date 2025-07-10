import 'package:fitnessapp/bottombar_pages/discover.dart';
import 'package:fitnessapp/bottombar_pages/for_u.dart';
import 'package:fitnessapp/bottombar_pages/profile.dart';
import 'package:fitnessapp/bottombar_pages/qr.dart';
import 'package:fitnessapp/bottombar_pages/workout.dart';
import 'package:fitnessapp/models/profiles.dart';
import 'package:fitnessapp/views/choose_card.dart';
import 'package:fitnessapp/views/comments_card.dart';
import 'package:fitnessapp/views/socials_card.dart';
import 'package:flutter/material.dart';

class GymDetail extends StatefulWidget {
  const GymDetail({super.key});

  @override
  State<GymDetail> createState() => _GymDetailState();
}

class _GymDetailState extends State<GymDetail> {

  final List<String> gallery=[
    "images/exclusive_third.jpg",
    "images/rectangle.png",
    "images/rectangle1.png",
    "images/foru.jpg",
    "images/rectangle6.png",
    "images/rectangle2.png",
    "images/trending_first.png",
    "images/rectangle3.png",
    "images/trending_third.png",
    "images/continue_second.png",
    "images/rectangle4.png",
    "images/workout.png",
    "images/rectangle5.png",
    "images/rectangle6.png",
    "images/rectangle7.png",
    "images/rectangle8.png",
    "images/rectangle9.png",
    "images/rectangle10.png",
  ];
  int selectedIndex=0;
   final List<MyListItem> itemLlist=[
    MyListItem(
      icon: Icons.phone, 
      title: "+994 12 599 11 00"),
    MyListItem(
      icon: Icons.location_on, 
      title: "Neftchilyar Avenue"),
  ];
  int selectedTab=0;
  Widget getSelectedContent(){
    switch (selectedTab){
      case 0:
        return owerview();
      case 1:
        return gallerys();
      case 2:
        return reviews();
      default:
        return SizedBox();
    }
  }
  String img="images/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body:ListView(
        children:[ Column(
          children: [
            Stack(
              children: [
                Image.asset("images/f1.png",fit: BoxFit.fill,),
                Positioned(
                  bottom: 0,
                  child: Row(
                    children: [
                     Container(
                      margin: EdgeInsets.all(15),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13.0,vertical: 5),
                          child: Text("Gym",style: TextStyle(color: Colors.black),),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFF62D794),
                        ),
                      ),
                      Icon(Icons.star,color:Colors.yellow,),
                      SizedBox(width: 5,),
                      Text("4.8",style: TextStyle(color: Colors.white),),
                      SizedBox(width: 10,),
                      Icon(Icons.circle,color: Colors.grey,size: 5,),
                      SizedBox(width: 10,),
                      Text("1200 reviews",style: TextStyle(color: Colors.white),),
                      SizedBox(width: 180,),
                      SizedBox(
                        height: 70,
                        child: Image.asset("images/favorite.png"))
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("The Club",style: TextStyle(color: Colors.white,fontSize: 20),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.turn_right_sharp,color: Colors.grey),
                        SizedBox(width: 5,),
                        Text("1.2 km away",style: TextStyle(color: Colors.grey,fontSize: 17),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: Colors.grey),
                        SizedBox(width: 5,),
                        Text("Neftchilyar Avenue",style: TextStyle(color: Colors.grey,fontSize: 17),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                     children: [
                      Icon(Icons.timer,color: Colors.grey),
                      SizedBox(width: 5,),
                      Text("Every day 7/24",style: TextStyle(color: Colors.grey,fontSize: 17),)
                    ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTab=0;
                      });
                    },
                    child: Text("Overview",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTab=1;
                      });
                    },
                    child: Text("Gallery",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTab=2;
                      });
                    },
                    child: Text("Reviews",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ],
              ),
            ),
            Divider(color: Color(0xFF252525),),
            SizedBox(height: 30,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child:getSelectedContent(),
            ),

          ],
        ),]
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

Widget owerview (){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("About",style: TextStyle(color: Colors.white,fontSize: 20),),
        SizedBox(height: 20,),
        Text("Welcome to the web-site of the first truly International health club. A complete wellness approach for members and families which has no comparison in Azerbaijan or the Caucasus!... ",
        style: TextStyle(color: Color(0xFFBDBDBD)),),
        Text("Read more",style: TextStyle(color: Color(0xFF62D794)),),
        SizedBox(height: 20,),
        Text("Services",style: TextStyle(color: Colors.white,fontSize: 20),),
        SizedBox(height: 20,),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ChooseCard(imgUrl: "${img}fitness.png", name: "Fitness", colors:Color(0xFF1f3a2d),),
                SizedBox(width: 15,),
                ChooseCard(imgUrl: "${img}woman_yesil.png", name: "Women", colors:Color(0xFF1f3a2d)),
                SizedBox(width: 15,),
                ChooseCard(imgUrl: "${img}stores_yesil.png", name: "Stores", colors:Color(0xFF1f3a2d)),
                SizedBox(width: 15,),
                ChooseCard(imgUrl: "${img}swim_yesil.png", name: "Pool", colors:Color(0xFF1f3a2d)),
                SizedBox(width: 15,),
                ChooseCard(imgUrl: "${img}karate_yesil.png", name: "Karate", colors:Color(0xFF1f3a2d)),
                SizedBox(width: 15,),
                ChooseCard(imgUrl: "${img}sports_yesil.png", name: "Sports", colors:Color(0xFF1f3a2d)),
                SizedBox(width: 15,),
                ChooseCard(imgUrl: "${img}parking_yesil.png", name: "Parking", colors:Color(0xFF1f3a2d)),
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Text("Contacts",style: TextStyle(color: Colors.white,fontSize: 20),),
        SizedBox(height: 20,),
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
        SizedBox(height: 10,),
        Container(
          height: 130,
          width: 443,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/map.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Icon(Icons.location_on,color: Color(0xFF62D794),size: 40,),
        ),
        SizedBox(height: 20,),
        Text("Socials",style: TextStyle(color: Colors.white,fontSize: 20),),
        SizedBox(height: 15,),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SocialsCard(imgUrl:"${img}face.png",),
                SizedBox(width: 35,),
                SocialsCard(imgUrl:"${img}instagram-line.png",),
                SizedBox(width: 35,),
                SocialsCard(imgUrl:"${img}whatsapp.png",),
                SizedBox(width: 35,),
                SocialsCard(imgUrl:"${img}twitter.png",),
                SizedBox(width: 35,),
                SocialsCard(imgUrl:"${img}youtube.png",),
              ],
            ),
          ),
        ),


      ],
    ),
  );
}
 
 Widget gallerys(){
  return GridView.builder(
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount:3 ,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 1,
    ), 
    padding: EdgeInsets.all(10),
    itemCount:gallery.length,
    itemBuilder: (context,index){
      return ClipRRect(
        child: Image.asset(gallery[index],fit: BoxFit.cover,)
      );
    }
  );
}

Widget reviews() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CommentsCard(imgUrl: "${img}img_bir.png", name: "Adil Gasimov"),
      SizedBox(height: 10,),
      CommentsCard(imgUrl: "${img}img_iki.png", name: "Ehtiram Guliyev"),
      SizedBox(height: 10,),
      CommentsCard(imgUrl: "${img}img_uc.png", name: "Khanim Jafarzade"),
      SizedBox(height: 10,),
      CommentsCard(imgUrl: "${img}img_dort.png", name: "Jafar Mammadov"),
      SizedBox(height: 10,),
      CommentsCard(imgUrl: "${img}img_bes.png", name: "Zeynal Zeynalov"),
      SizedBox(height: 10,),
      CommentsCard(imgUrl: "${img}img_alti.png", name: "Gunay Gurbanova"),
      
    ],
  );
}


}
