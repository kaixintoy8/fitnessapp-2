import 'package:flutter/material.dart';

class ForuThirdCard extends StatefulWidget {
  final String imgUrl;
  const ForuThirdCard({required this.imgUrl});

  @override
  State<ForuThirdCard> createState() => _ForuThirdCardState();
}

class _ForuThirdCardState extends State<ForuThirdCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: 282,
            width: 343,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  height:176,
                  width: 300,
                  child: Image.asset(widget.imgUrl,fit: BoxFit.contain,),
                ),
                Container(
                  height: 106, 
                  width: 300,           
                  decoration: BoxDecoration(
                    color: Color(0xFF252525),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 10),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(" National Health Movement",style: TextStyle(color: Colors.white,fontSize: 20),)),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(Icons.access_time_filled_sharp,color: Colors.green,),
                            SizedBox(width: 10,),
                            Text("13 October, 20:00",style: TextStyle(color: Colors.green),),
                            SizedBox(width: 10,),
                            Container(
                              height: 3,
                              width:3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xFF4F4F4F),                                
                              ),
                            ),
                            SizedBox(width:10,),
                            Text("120 interested",style: TextStyle(color: Color(0xFFBDBDBD)),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("Khanim Jafarzade",style: TextStyle(color: Color(0xFFBDBDBD)),),
                            SizedBox(width: 10,),
                            Container(
                              height: 3,
                              width: 3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xFF4F4F4F),
                              ),
                            ),
                            SizedBox(width:10,),
                            Text("Webinar",style: TextStyle(color: Color(0xFFBDBDBD)),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}