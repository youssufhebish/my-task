import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';
import 'package:my_task/models/player_model.dart';

class MatchDetailPlayerList extends StatelessWidget {
  const MatchDetailPlayerList({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 15.0,
                  child: Image.asset(playersList[index].playerImage),
                ),
                const SizedBox(
                  width: 7.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(playersList[index].playerName,
                      style: TextStyle(color: blue, fontWeight: FontWeight.w500, fontSize: 14.0,),),
                    Text(playersList[index].playerPosition,
                      style: TextStyle(color: white, fontWeight: FontWeight.w400, fontSize: 12.0,),),
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Color(0xFF1E273C),
          ),
        ],
      ),
    );
  }
}
