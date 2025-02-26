import 'package:flutter/material.dart';
import 'package:taskati/core/widgets/app_width_box.dart';

class ColoredCircles extends StatefulWidget {
  const ColoredCircles({
    super.key,
  });

  @override
  State<ColoredCircles> createState() => _ColoredCirclesState();
}

class _ColoredCirclesState extends State<ColoredCircles> {
  bool isRed = false;
  bool isgreen = false;
  bool isOrange = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isRed = true;
              isOrange = false;
              isgreen = false;
            });
          },
          child: Container(
            width: 25 ,
            height: 25 ,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                child: isRed?Icon(Icons.done,
                color: Colors.white,
                    size: 20,):SizedBox.shrink()
          ),
        ),
        AppWidthBox(10),
        InkWell(
          onTap: () {
            setState(() {
              isRed = false;
              isOrange = false;
              isgreen = true;
            });
          },
          child: Container(
            width: 25,
            height: 25,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.green),
            child: isgreen
                ? Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 20,
                  )
                : SizedBox.shrink(),
          ),
        ),
        AppWidthBox(10),
        InkWell(
          onTap: () {
            setState(() {
              isRed = false;
              isOrange = true;
              isgreen = false;
            });
          },
          child: Container(
            width: 25 ,
            height: 25,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
                child: isOrange
                ? Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 20,
                  )
                : SizedBox.shrink(),
          ),
        )
      ],
    );
  }
}
