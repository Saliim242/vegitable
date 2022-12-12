import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableRow extends StatefulWidget {
  const ReusableRow({super.key, required this.image, required this.titile});
  final String image;
  final String titile;

  @override
  State<ReusableRow> createState() => _ReusableRowState();
}

class _ReusableRowState extends State<ReusableRow> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(widget.image!),
        ),
        SizedBox(width: 10),
        Text(
          "${widget.titile!}",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Spacer(),
        Row(children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {
                if (count > 0) {
                  setState(() {
                    count--;
                  });
                }
              },
              icon: Icon(CupertinoIcons.minus),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 50,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              shape: BoxShape.rectangle,
            ),
            child: Center(
                child: Text(
              "$count",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            )),
          ),
          SizedBox(width: 10),
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              icon: Icon(CupertinoIcons.plus),
            ),
          )
        ]),
      ],
    );
  }
}
