
import 'package:flutter/material.dart';
import 'package:my_task/modules/my_matches/matches_cubit/cubit.dart';

import 'match_status_selected.dart';
import 'match_status_text.dart';

Widget matchStatusButton(
        {required String text, required int index, required context}) =>
    GestureDetector(
      onTap: () {
        MatchesCubit.get(context).changeMatchStatus(index);
      },
      child: MatchesCubit.get(context).index == index
          ? matchStatusSelected(text: text)
          : matchStatusText(text: text),
    );