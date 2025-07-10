import 'package:flutter/material.dart';

class ChooseCard extends StatefulWidget {
  final String imgUrl;
  final String name;
  final Color colors;
  const ChooseCard({required this.imgUrl, required this.name, required this.colors});

  @override
  State<ChooseCard> createState() => _ChooseCardState();
}

class _ChooseCardState extends State<ChooseCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            width:80,
            height:80,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child:Image.asset(widget.imgUrl,),
            ),
            decoration: BoxDecoration(
              color: widget.colors,
              borderRadius: BorderRadius.all(Radius.circular(100))
            ),
          ),
          SizedBox(height: 10,),
          Text(widget.name,style: TextStyle(color: Colors.grey),)
        ],
      );
  }
}