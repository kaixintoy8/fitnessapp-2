import 'package:flutter/material.dart';

class LatestSeenCard extends StatefulWidget {
  final String imgUrl;
  final String name;
  const LatestSeenCard({required this.imgUrl,required this.name});

  @override
  State<LatestSeenCard> createState() => _LatestSeenCardState();
}

class _LatestSeenCardState extends State<LatestSeenCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: 180,
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imgUrl),
                fit: BoxFit.cover
                ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Column(
                children: [
                  Expanded(
                    flex: 6,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0,left: 10),
                        child: Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 13.0,vertical: 5),
                                child: Text("Gym",style: TextStyle(color: Colors.black),),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Color(0xFF62D794),
                              ),
                            ),
                            SizedBox(width:10,),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 13.0,vertical: 5),
                                child: Text("Sale",style: TextStyle(color: Colors.white),),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Color.fromARGB(185, 254, 119, 98)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(flex: 2,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 5),
                      child: Text(widget.name,style: TextStyle(color: Colors.white,fontSize: 20)))),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Row(
                        children: [
                          Text("3.21 km away",style: TextStyle(color: Colors.white)),
                          SizedBox(width: 10,),
                          Text("12 available places",style: TextStyle(color: Colors.white)),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(55, 158, 158, 158),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5),
                              child: Row(
                                children: [
                                  Icon(Icons
                                  .star,color: Colors.amber,),
                                  SizedBox(width: 5,),
                                  Text("4.8",style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          )
                        ],
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}