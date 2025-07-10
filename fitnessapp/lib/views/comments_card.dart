import 'package:flutter/material.dart';

class CommentsCard extends StatefulWidget {
  final String imgUrl;
  final String name;
  const CommentsCard({required this.imgUrl, required this.name});

  @override
  State<CommentsCard> createState() => _CommentsCardState();
}

class _CommentsCardState extends State<CommentsCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 460,
      child: Card(
        color: Colors.black,
        child: Row(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.imgUrl)),
                ),
              ),
            ),
            SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: 330,
                  height: 60,
                  child: Text(
                    "This is the best gym I've seen. All services are top notch. The pool is clean, professional trainers, in a word, excellent!!!",
                    style: TextStyle(color: Color(0xFFBDBDBD)),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    SizedBox(width: 10),
                    Text(
                      "4.0",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 3,
                      width: 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text("12.03.2021", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
