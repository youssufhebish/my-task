import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';
import 'package:my_task/modules/home/home_components/connect_to_friend.dart';
import 'package:my_task/modules/home/home_components/home_location.dart';
import 'package:my_task/modules/home/home_components/post.dart';
import 'package:my_task/modules/home/home_components/post_head.dart';
import 'package:my_task/modules/home/home_components/tag_head.dart';
import 'package:my_task/modules/my_matches/my_matches.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int index = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/outline.png', width: 53.0,),
                Image.asset('assets/images/01.png', width: 46.0,)
              ],
            ),
            const SizedBox(width: 10.0,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome',
                style: TextStyle(color: white, fontSize: 12.0, fontWeight: FontWeight.w400,),),
                Text('Jone',
                  style: TextStyle(color: white, fontSize: 16.0, fontWeight: FontWeight.w700,),),
              ],
            ),
          ],
        ),
        flexibleSpace: const Image(
          image: AssetImage('assets/images/pattern.png'),
          fit: BoxFit.cover,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/icons/notifications.png',
                width: 16,
              )),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/icons/zoom-in.png',
                width: 24,
              )),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              children: const [
                HomeLocation(),
                SizedBox(height: 15.0,),
                TagHead(),
                SizedBox(height: 15.0,),
                PostHead(),
                SizedBox(height: 10.0,),
                Post(),
                SizedBox(height: 25.0,),
                ConnectToFriend(),
                SizedBox(height: 125.0,),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/bottom.png',),
              SizedBox(
                height: 80.0,
                child: Column(
                  children: [
                    const SizedBox(height: 40.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              index = 0;
                            });
                          },
                          child: SizedBox(
                            height: 40.0,
                            child: Column(
                              children: [
                                Icon(Icons.feed_outlined, color: index == 0? blue : const Color(0xFF393B4B),),
                                Text('feeds',
                                style: TextStyle(color: index == 0? blue : const Color(0xFF393B4B), fontSize: 10.0, fontWeight: FontWeight.w400,),),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              index = 1;
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyMatches()));
                            });
                          },
                          child: SizedBox(
                            height: 40.0,
                            child: Column(
                              children: [
                                Icon(Icons.sports_soccer, color: index == 1? blue : const Color(0xFF393B4B),),
                                Text('Fields',
                                  style: TextStyle(color: index == 1? blue : const Color(0xFF393B4B), fontSize: 10.0, fontWeight: FontWeight.w400,),),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              index = 2;
                            });
                          },
                          child: SizedBox(
                            height: 40.0,
                            child: Column(
                              children: [
                                Icon(Icons.calendar_today_outlined, color: index == 2? blue : const Color(0xFF393B4B),),
                                Text('Booking',
                                  style: TextStyle(color: index == 2? blue : const Color(0xFF393B4B), fontSize: 10.0, fontWeight: FontWeight.w400,),),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              index = 3;
                            });
                          },
                          child: SizedBox(
                            height: 40.0,
                            child: Column(
                              children: [
                                Icon(Icons.messenger_outline_rounded, color: index == 3? blue : const Color(0xFF393B4B),),
                                Text('Message',
                                  style: TextStyle(color: index == 3? blue : const Color(0xFF393B4B), fontSize: 10.0, fontWeight: FontWeight.w400,),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 150.0,
              right: 12.0,
              child: Image.asset(
            'assets/images/add.png',
            width: 56.0,
          )),
        ],
      ),
    );
  }
}
