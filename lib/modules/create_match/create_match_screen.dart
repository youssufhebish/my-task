
import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';

class CreateMatchScreen extends StatefulWidget {
  const CreateMatchScreen({Key? key}) : super(key: key);

  @override
  State<CreateMatchScreen> createState() => _CreateMatchScreenState();
}

class _CreateMatchScreenState extends State<CreateMatchScreen> {
  @override
  Widget build(BuildContext context) {
    List<bool> list = [
      false,
      false,
      false,
      false,
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Booking',
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
                'assets/images/icons/calendar.png',
                width: 20.0,
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            width: double.infinity,
            height: 105.0,
            color: dark,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text('Game type:',
                    style: TextStyle(color: white, fontSize: 14.0, fontWeight: FontWeight.w400,),),
                    const SizedBox(width: 50.0,),
                    Image.asset('assets/images/icons/unselected.png', width: 13.0,),
                    const SizedBox(width: 10.0,),
                    Image.asset('assets/images/football.png', width: 24.0,
                    color: Colors.grey,),
                  ],
                ),
                const Divider(
                  color: Color(0xFF1E273C),
                ),
                Row(
                  children: [
                    Text('Match type:',
                      style: TextStyle(color: white, fontSize: 14.0, fontWeight: FontWeight.w400,),),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
