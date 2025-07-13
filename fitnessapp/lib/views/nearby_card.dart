import 'package:flutter/material.dart';

class NearbyCard extends StatefulWidget {
  final String imgUrl;
  final String name;
  final String topTitle;
  final Color color;
  const NearbyCard({required this.imgUrl,required this.name,required this.topTitle,required this.color});

  @override
  State<NearbyCard> createState() => _NearbyCardState();
}

class _NearbyCardState extends State<NearbyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: 480,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.imgUrl),
          fit: BoxFit.cover
          ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0,left: 10),
                child: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13.0,vertical: 5),
                        child: Text(widget.topTitle,style: TextStyle(color: Colors.white),),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color:widget.color,
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
                  Expanded(
                    flex: 5,
                    child: Row(
                      children: [
                    Text("1 km away",style: TextStyle(color: Colors.white)),
                    SizedBox(width: 10,),
                    Text("12 available places",style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
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
                    ),
                  )
                ],
                  ),
            ),
          ),
        ],
      ),
    );
  }
}