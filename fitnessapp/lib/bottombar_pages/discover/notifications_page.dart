import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Notifications", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFFE7762),
                  radius: 30,
                  child: Image.asset("images/vector.png"),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Successfully got new Fitness bagde",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "13 October, 20:00",
                      style: TextStyle(color: Color(0xFFBDBDBD), fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 30,
                  child: Icon(Icons.star, color: Colors.white, size: 35),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New visit at The Port",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "13 October, 20:00",
                      style: TextStyle(color: Color(0xFFBDBDBD), fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 60,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF62D794),
                ),
                onPressed: () {},
                label: Text(
                  "Rate the place",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                icon: Icon(Icons.star, color: Colors.white, size: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
