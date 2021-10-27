import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';

class TagHead extends StatelessWidget {
  const TagHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Text('#Football_Life',
            style: TextStyle(color: white, fontSize: 16.0, fontWeight: FontWeight.bold),),
          const Spacer(),
          Text('Explore all',
            style: TextStyle(color: blueStroke, fontSize: 14.0, fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}
