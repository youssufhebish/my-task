

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_task/modules/match_detail/match_detail_cubit/match_detail_cubit.dart';

class MatchDetailCubit extends Cubit<MatchDetailStates>{
  MatchDetailCubit() : super(MatchDetailInitial());

  static MatchDetailCubit get(context) => BlocProvider.of(context);

  int teamIndex = 0;

  void changeTeam(int i){
    teamIndex = i;
    emit(TeamChange());
  }
}