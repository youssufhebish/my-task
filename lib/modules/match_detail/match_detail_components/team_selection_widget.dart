import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';
import 'package:my_task/modules/match_detail/match_detail_components/team_button.dart';

class TeamSelection extends StatelessWidget {
  const TeamSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      height: 44.0,
      width: 220.0,
      decoration: BoxDecoration(
        color: dark,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          teamSelectButton(text: 'Team 1', index: 0, context: context),
          teamSelectButton(text: 'Team 2', index: 1, context: context),
        ],
      ),
    );
  }
}
