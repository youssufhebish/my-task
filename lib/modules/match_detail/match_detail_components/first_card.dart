import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 20.0),
        height: 160.0,
        decoration: BoxDecoration(
          color: dark,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Field',
                      style: TextStyle(color: blueStroke, fontSize: 16.0, fontWeight: FontWeight.w600, height: 0.5,),),
                    Text('National facilities',
                      style: TextStyle(color: white, fontSize: 13.0, fontWeight: FontWeight.w400, height: 1.2,),),
                  ],
                ),
                const Spacer(),
                CircleAvatar(
                  radius: 15.0,
                  backgroundColor: blue.withOpacity(0.05),
                  child: Icon(Icons.phone, color: white, size: 15.0,),
                )
              ],
            ),
            const SizedBox(height: 13.5,),
            Text('Booking Slot',
              style: TextStyle(color: blueStroke, fontSize: 16.0, fontWeight: FontWeight.w600, height: 0.5,),),
            const SizedBox(height: 13.5,),
            Text('August 13',
              style: TextStyle(color: white, fontSize: 16.0, fontWeight: FontWeight.w500, height: 0.5,),),
            const SizedBox(height: 12.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('11:00 - 12:00',
                      style: TextStyle(color: white, fontSize: 13.0, fontWeight: FontWeight.w400, height: 1,),),
                    const SizedBox(height: 6.0,),
                    Row(
                      children: [
                        Text('Standalone',
                          style: TextStyle(color: white, fontSize: 13.0, fontWeight: FontWeight.w400, height: 1.2,),),
                        const SizedBox(width: 12.0,),
                        Text('Football',
                          style: TextStyle(color: white, fontSize: 13.0, fontWeight: FontWeight.w400, height: 1.2,),),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Total',
                      style: TextStyle(color: white, fontSize: 13.0, fontWeight: FontWeight.w400, height: 1,),),
                    const SizedBox(height: 6.0,),
                    Text('100€',
                      style: TextStyle(color: white, fontSize: 18.0, fontWeight: FontWeight.w700, height: 0.7,),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
