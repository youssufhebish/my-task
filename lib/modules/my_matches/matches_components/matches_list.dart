import 'package:flutter/material.dart';
import 'package:my_task/components/widgets/match_card_widget.dart';
import 'package:my_task/models/match_model.dart';

class MatchesList extends StatelessWidget {
  const MatchesList({Key? key, required this.height, required this.list, required this.index}) : super(key: key);
  final double height;
  final List<MatchModel> list;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height - 148,
      child: ListView.builder(
        itemBuilder: (context, index) =>
            matchCard(model: list[index], i: index, context: context,),
        itemCount: list.length,
      ),
    );
  }
}
