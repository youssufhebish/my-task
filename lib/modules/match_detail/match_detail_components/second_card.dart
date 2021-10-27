import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';
import 'package:my_task/modules/match_detail/match_detail_components/team_widget.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
        height: 155.0,
        decoration: BoxDecoration(
          color: dark,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            teamWidget(logo: 'assets/images/home.png', title: 'Team 1'),
            Text('VS',
              style: TextStyle(color: white, fontWeight: FontWeight.w500, fontSize: 24.0,),),
            teamWidget(logo: 'assets/images/away.png', title: 'Team 2'),
          ],
        ),
      ),
    );
  }
}
