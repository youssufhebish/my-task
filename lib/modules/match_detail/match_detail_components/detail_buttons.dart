import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';

class MatchDetailButtons extends StatelessWidget {
  const MatchDetailButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 48.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                border: Border.all(color: blue, width: 1.0),
              ),
              child: Center(
                child: Text(
                  'View Team',
                  style: TextStyle(
                    color: white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0,),
          Expanded(
            child: Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.circular(2.0),
                border: Border.all(color: blue, width: 1.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/icons/messaging.png', width: 16.5,),
                  const SizedBox(width: 10.0,),
                  Text(
                    'View Team',
                    style: TextStyle(
                      color: white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
