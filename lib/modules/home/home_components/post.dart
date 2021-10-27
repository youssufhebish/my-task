import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        alignment: Alignment.topLeft,
        width: double.infinity,
        height: 345.0,
        decoration: BoxDecoration(
          color: dark,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0),),
              child: Image.asset('assets/images/mask.png',
                fit: BoxFit.cover,
                height: 213.0,),
            ),
            const SizedBox(height: 13.0,),
            Row(
              children: [
                const SizedBox(width: 13.0,),
                Icon(Icons.favorite, color: red, size: 15.0,),
                const SizedBox(width: 7.0,),
                Text('12k',
                  style: TextStyle(color: white, fontSize: 13.0, fontWeight: FontWeight.w400),),
                const SizedBox(width: 18.0,),
                Icon(Icons.mode_comment_outlined, color: white, size: 15.0,),
                const SizedBox(width: 7.0,),
                Text('258',
                  style: TextStyle(color: white, fontSize: 13.0, fontWeight: FontWeight.w400),),
                const Spacer(),
                Image.asset('assets/images/icons/share.png', width: 15.0,),
                const SizedBox(width: 17.0,),
              ],
            ),
            const SizedBox(height: 16.0,),
            Row(
              children: [
                const SizedBox(width: 14.0,),
                Text('View all Comments',
                  style: TextStyle(color: white, fontSize: 14.0, fontWeight: FontWeight.w400),),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 8.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 40.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        radius: 15.0,
                        backgroundImage: AssetImage('assets/images/01.png'),
                      ),
                      SizedBox(width: 12.0,),
                      Text('Add a comment',
                        style: TextStyle(color: Color(0xFF393B4B), fontSize: 12.0,),)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
