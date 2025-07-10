import 'package:flutter/material.dart';

class SocialsCard extends StatefulWidget {
    final String imgUrl;

  const SocialsCard({required this.imgUrl});

  @override
  State<SocialsCard> createState() => _SocialsCardState();
}

class _SocialsCardState extends State<SocialsCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            width:60,
            height:60,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child:Image.asset(widget.imgUrl,),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(63, 98, 215, 149),
              borderRadius: BorderRadius.all(Radius.circular(100))
            ),
          ),
          SizedBox(height: 10,),
        ],
      );
  }
}