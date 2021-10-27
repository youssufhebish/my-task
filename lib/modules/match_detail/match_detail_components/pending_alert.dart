import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';

class PendingAlert extends StatelessWidget {
  const PendingAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          color: dark,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/icons/union.png', width: 12.0,),
            FittedBox(
              child: Text('Waiting for acceptance from Team 2',
                style: TextStyle(color: blueStroke, fontSize: 14.0, fontWeight: FontWeight.w400,),),
            ),
          ],
        ),
      ),
    );
  }
}
