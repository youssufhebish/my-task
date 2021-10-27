
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_task/components/colors.dart';
import 'package:my_task/models/player_model.dart';
import 'package:my_task/modules/match_detail/match_detail_components/first_card.dart';
import 'package:my_task/modules/match_detail/match_detail_components/player_list.dart';
import 'package:my_task/modules/match_detail/match_detail_components/second_card.dart';
import 'package:my_task/modules/match_detail/match_detail_components/team_selection_widget.dart';
import 'package:my_task/modules/match_detail/match_detail_cubit/match_detail_cubit.dart';
import 'package:my_task/modules/match_detail/match_detail_cubit/match_detail_states.dart';

import 'match_detail_components/match_join_request.dart';

class MatchDetailJoin extends StatelessWidget {
  const MatchDetailJoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MatchDetailCubit, MatchDetailStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Match detail',
              style: TextStyle(
                color: white,
              ),
            ),
            flexibleSpace: const Image(
              image: AssetImage('assets/images/pattern.png'),
              fit: BoxFit.cover,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/icons/recycle-bin.png',
                    width: 16.5,
                  )),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25.0,),
                const FirstCard(),
                const SizedBox(height: 15.0,),
                const SecondCard(),
                const SizedBox(height: 25.0,),
                const Center(child: TeamSelection()),
                const SizedBox(height: 10.0,),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 30.0,
                  color: green,
                  child: Text('3 Position Left',
                  style: TextStyle(color: white, fontSize: 14.0, fontWeight: FontWeight.w500),),
                ),
                const SizedBox(height: 25.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text('Player List',
                    style: TextStyle(color: white, fontSize: 18.0, fontWeight: FontWeight.w500),),
                ),
                for(int i = 0; i < playersList.length; ++i)
                  MatchDetailPlayerList(index: i),
                const SizedBox(height: 25.0,),
                const MatchJoinRequest(),
                const SizedBox(height: 25.0,),
              ],
            ),
          ),
        );
      },
    );
  }
}
