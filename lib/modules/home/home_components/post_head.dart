import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';

class PostHead extends StatelessWidget {
  const PostHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(children: [
        const CircleAvatar(radius: 15.0,
          foregroundImage: const AssetImage('assets/images/01.png'),),
        const SizedBox(width: 5.0,),
        Text('Kroos 98',
          style: TextStyle(color: white, fontSize: 14.0, fontWeight: FontWeight.w600),),
        const Spacer(),
        Icon(Icons.more_vert, color: white,),
      ],),
    );
  }
}
