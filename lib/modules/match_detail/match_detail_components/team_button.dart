
import 'package:flutter/material.dart';
import 'package:my_task/modules/match_detail/match_detail_cubit/match_detail_states.dart';
import 'package:my_task/modules/my_matches/matches_components/match_status_selected.dart';
import 'package:my_task/modules/my_matches/matches_components/match_status_text.dart';




Widget teamSelectButton(
    {required String text, required int index, required context}) =>
    GestureDetector(
      onTap: () {
        MatchDetailCubit.get(context).changeTeam(index);
      },
      child: MatchDetailCubit.get(context).teamIndex == index
          ? matchStatusSelected(text: text)
          : matchStatusText(text: text),
    );