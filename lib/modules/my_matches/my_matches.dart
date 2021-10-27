import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_task/components/colors.dart';
import 'package:my_task/models/match_model.dart';
import 'package:my_task/modules/my_matches/matches_components/match_statue_button.dart';
import 'package:my_task/modules/my_matches/matches_cubit/cubit.dart';
import 'package:my_task/modules/my_matches/matches_cubit/states.dart';

import 'matches_components/matches_list.dart';

class MyMatches extends StatelessWidget {
  const MyMatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocConsumer<MatchesCubit, MatchesStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'My matches',
              style: TextStyle(
                color: white,
              ),
            ),
            flexibleSpace: const Image(
              image: AssetImage('assets/images/pattern.png'),
              fit: BoxFit.cover,
            ),
          ),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 55.0,
                color: dark,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    matchStatusButton(text: 'Up coming', index: 0, context: context),
                    matchStatusButton(text: 'Current', index: 1, context: context),
                    matchStatusButton(text: 'Finished', index: 2, context: context),
                  ],
                ),
              ),
              const SizedBox(height: 12.0,),
              if(MatchesCubit.get(context).index == 0) MatchesList(height: height, list: upcomingMatches, index: 0,),
              if(MatchesCubit.get(context).index == 1) MatchesList(height: height, list: currentMatches, index: 1,),
              if(MatchesCubit.get(context).index == 2) MatchesList(height: height, list: finishedMatches, index: 2,),
            ],
          ),
        );
      },
    );
  }
}
