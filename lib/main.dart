import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:my_task/modules/match_detail/match_detail_cubit/match_detail_states.dart';
import 'package:my_task/modules/match_detail/match_detail_join.dart';
import 'package:my_task/modules/my_matches/matches_cubit/cubit.dart';
import 'bloc_observer.dart';
import 'components/colors.dart';
import 'modules/create_match/create_match_screen.dart';
import 'modules/home/home.dart';
import 'modules/match_detail/match_detail.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MatchesCubit()),
        BlocProvider(create: (context) => MatchDetailCubit()),
      ],
      child: MaterialApp(
        title: 'myTask',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: background,
          fontFamily: 'saira',
          appBarTheme: const AppBarTheme(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
          ),
          primarySwatch: Colors.blue,
        ),
        home: const Home(),
      ),
    );
  }
}
