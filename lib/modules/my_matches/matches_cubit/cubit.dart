import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_task/modules/my_matches/matches_cubit/states.dart';

class MatchesCubit extends Cubit<MatchesStates> {
  MatchesCubit() : super(MatchInitial());
  static MatchesCubit get(context) => BlocProvider.of(context);

  int index = 0;

  changeMatchStatus(int i){
    index = i;
    emit(MatchStatusChange());
  }
}