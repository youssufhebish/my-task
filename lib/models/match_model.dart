import 'package:flutter/cupertino.dart';
import 'package:my_task/modules/match_detail/match_detail.dart';
import 'package:my_task/modules/match_detail/match_detail_join.dart';

class MatchModel{

  final String homeTitle;
  final String awayTitle;
  final String homeLogo;
  final String awayLogo;
  final String matchType;
  final String matchStatus;
  final Widget screen;

  MatchModel({
    required this.homeTitle,
    required this.awayTitle,
    required this.homeLogo,
    required this.awayLogo,
    required this.matchType,
    required this.matchStatus,
    required this.screen,
  });
}

List<MatchModel> upcomingMatches = [
  MatchModel(
    homeTitle: 'Team 1',
    awayTitle: 'Team 2',
    homeLogo: 'assets/images/home.png',
    awayLogo: 'assets/images/away.png',
    matchType: 'Friendly',
    matchStatus: 'Upcoming',
    screen: const MatchDetailJoin(),
  ),
];

List<MatchModel> currentMatches = [
  MatchModel(
    homeTitle: 'Team 1',
    awayTitle: 'Team 2',
    homeLogo: 'assets/images/home.png',
    awayLogo: 'assets/images/away.png',
    matchType: 'Friendly',
    matchStatus: 'On going',
    screen: const MatchDetail(),
  ),
  MatchModel(
    homeTitle: 'Team 1',
    awayTitle: 'Team 2',
    homeLogo: 'assets/images/home.png',
    awayLogo: 'assets/images/away.png',
    matchType: 'Friendly',
    matchStatus: 'On going',
    screen: const MatchDetail(),
  ),
];

List<MatchModel> finishedMatches = [
  MatchModel(
    homeTitle: 'Team 1',
    awayTitle: 'Team 2',
    homeLogo: 'assets/images/home.png',
    awayLogo: 'assets/images/away.png',
    matchType: 'Friendly',
    matchStatus: '90+4',
    screen: const MatchDetail(),
  ),
];