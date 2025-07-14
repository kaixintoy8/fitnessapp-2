import 'package:fitnessapp/bottombar_pages/for_u.dart';
import 'package:fitnessapp/bottombar_pages/profile/app_settings.dart';
import 'package:fitnessapp/bottombar_pages/profile/edit_personal_information.dart';
import 'package:fitnessapp/bottombar_pages/profile/edit_profile.dart';
import 'package:fitnessapp/bottombar_pages/profile/help_and_support.dart';
import 'package:fitnessapp/bottombar_pages/profile/history.dart';
import 'package:fitnessapp/bottombar_pages/qr.dart';
import 'package:fitnessapp/bottombar_pages/workout.dart';
import 'package:fitnessapp/bottombar_pages/discover/discover.dart';
import 'package:fitnessapp/main.dart';
import 'package:fitnessapp/models/profiles.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int selectedIndex = 4;
  final List<MyListItem> itemLlist = [
    MyListItem(icon: Icons.person, title: "Edit Profile"),
    MyListItem(
      icon: Icons.perm_contact_calendar_sharp,
      title: "Edit Personal Informations",
    ),
    MyListItem(icon: Icons.my_library_books_rounded, title: "History"),
    MyListItem(icon: Icons.favorite, title: "Favorites"),
  ];
  final List<MySecondList> secondList = [
    MySecondList(icon: Icons.settings, title: "App Settings"),
    MySecondList(icon: Icons.language_rounded, title: "Language"),
  ];
  final List<MyThirdList> thirdList = [
    MyThirdList(icon: Icons.help, title: "Help and Support"),
    MyThirdList(icon: Icons.info_rounded, title: "About Us"),
    MyThirdList(icon: Icons.lock, title: "Privacy Policy"),
  ];
  final List<String> languages = [
    'Azerbaycan Dili',
    'English',
    'Español',
    'Français',
    'Deutsch',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
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
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Color(0xFFBDBDBD),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Khanim Jafarzade",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Push30 Company",
                      style: TextStyle(color: Color(0xFF828282), fontSize: 17),
                    ),
                    SizedBox(height: 30),
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
                          child: Icon(Icons.timer, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "420",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Overall visites",
                          style: TextStyle(color: Color(0xFF828282)),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.yellow,
                          child: Icon(Icons.star, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "32",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Places visited",
                          style: TextStyle(color: Color(0xFF828282)),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xFFFE7762),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "images/vector.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "4/15",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Badge Collected",
                          style: TextStyle(color: Color(0xFF828282)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Account",
                style: TextStyle(color: Color(0xFF828282), fontSize: 20),
              ),
              Column(
                children: itemLlist.asMap().entries.map((entry) {
                  int index = entry.key;
                  MyListItem item = entry.value;
                  return ListTile(
                    leading: Icon(item.icon, color: Colors.green),
                    title: Text(
                      item.title,
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfile(),
                          ),
                        );
                      }
                      if (index == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditPersonalInformation(),
                          ),
                        );
                      }
                      if (index == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      }
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Text(
                "General",
                style: TextStyle(color: Color(0xFF828282), fontSize: 20),
              ),
              SizedBox(height: 20),
              Column(
                children: secondList.asMap().entries.map((entry) {
                  int index = entry.key;
                  MySecondList item = entry.value;
                  return ListTile(
                    leading: Icon(item.icon, color: Colors.green),
                    title: Text(
                      item.title,
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppSettings(),
                          ),
                        );
                      }
                      if (index == 1) {
                        showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                          backgroundColor: Color(0xFF252525),
                          builder: (context) {
                            return Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Cancel",
                                        style: TextStyle(
                                          color: Color(0xFF62D794),
                                        ),
                                      ),
                                      Spacer(),
                                      const Text(
                                        "Language Select",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Spacer(),
                                      const Text(
                                        "Done",
                                        style: TextStyle(
                                          color: Color(0xFF62D794),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 50),
                                  SizedBox(
                                    height: 200,
                                    child: ListView.separated(
                                      shrinkWrap: true,
                                      itemCount: languages.length,
                                      itemBuilder: (context, i) {
                                        return Center(
                                          child: Text(
                                            languages[i],
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: Color(0xFFBDBDBD),
                                              fontSize: 18,
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          const Divider(
                                            color: Color(0xFF333333),
                                            thickness: 0.5,
                                            height: 10,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Text(
                "About",
                style: TextStyle(color: Color(0xFF828282), fontSize: 20),
              ),
              SizedBox(height: 20),
              Column(
                children: thirdList.asMap().entries.map((entry) {
                  int index = entry.key;
                  MyThirdList item = entry.value;
                  return ListTile(
                    leading: Icon(item.icon, color: Colors.green),
                    title: Text(
                      item.title,
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HelpAndSupport(),
                          ),
                        );
                      }
                    },
                  );
                }).toList(),
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_circle_left,
                  color: Color(0xFFFE7762),
                ),
                title: Text("Log Out", style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Onboarding()),
                  );
                },
              ),
            ],
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

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Language select"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
    );
  }
}
