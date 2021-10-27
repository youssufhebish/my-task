import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';

class ConnectToFriend extends StatelessWidget {
  const ConnectToFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              Text('Connect to friends',
                style: TextStyle(color: white, fontSize: 16.0, fontWeight: FontWeight.w700),),
              Spacer(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SizedBox(
            width: double.infinity,
            height: 82.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/images/outline.png',
                          width: 53.0,
                        ),
                        Image.asset(
                          'assets/images/01.png',
                          width: 46.0,
                        )
                      ],
                    ),
                    Text('Arthur',
                      style: TextStyle(color: white, fontSize: 12.0, fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
              itemCount: 15,
            ),
          ),
        ),
      ],
    );
  }
}
