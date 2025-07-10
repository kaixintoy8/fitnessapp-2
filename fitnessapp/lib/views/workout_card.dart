import 'package:flutter/material.dart';

class WorkoutCard extends StatefulWidget {
  final String imgUrl;
  const WorkoutCard({required this.imgUrl});

  @override
  State<WorkoutCard> createState() => _WorkoutCardState();
}

class _WorkoutCardState extends State<WorkoutCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Container(
            height: 175,
            width: 285,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imgUrl,),fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFFE7762),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("Free",style: TextStyle(color: Colors.white),)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 120,
            width: 285,
            decoration: BoxDecoration(
              color: Color(0xFF252525),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Morning workouts",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  SizedBox(height: 10,),
                  Row(
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
                          color: Color(0xFF4F4F4F)
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("120 watching",style: TextStyle(color: Color(0xFFF2F2F2)),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Kamran Mammadov",style: TextStyle(color: Color(0xFFBDBDBD),fontSize: 12),),
                      SizedBox(width: 10,),
                      Container(
                        height: 3,
                        width: 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xFF4F4F4F)
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("Fitness Instructor",style: TextStyle(color: Color(0xFFBDBDBD),fontSize: 12),)
                    
                    ],
                  )
              ],),
            ),
          )
      
        ],
      ),
    );
  }
}