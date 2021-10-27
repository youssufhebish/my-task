import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_task/models/match_model.dart';

import '../colors.dart';

Widget matchCard({required MatchModel model, required int i, required context,}) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0,),
  child: Stack(
    children: [
      Container(
        width: double.infinity,
        height: 155.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: const DecorationImage(image: AssetImage('assets/images/background.png',),
              fit: BoxFit.cover,)
        ),
      ),
      Container(
        width: double.infinity,
        height: 155.0,
        decoration: BoxDecoration(
          color: lemonDark.withOpacity(0.25),
          backgroundBlendMode: BlendMode.multiply,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            const SizedBox(width: 24.0,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 18.0,),
                Text('Field name'.toUpperCase(),
                  style: const TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w700,),),
                const SizedBox(height: 10.0,),
                Row(
                  children: [
                    SizedBox(
                      height: 48.0,
                      child: Image.asset(
                        model.homeLogo,
                        width: 40.0,
                      ),
                    ),
                    const SizedBox(width: 15.0,),
                    Text(
                      'vs'.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 15.0,),
                    SizedBox(
                      height: 48.0,
                      child: Image.asset(
                        model.awayLogo,
                        width: 40.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      model.homeTitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 10.0,),
                    const Text(
                      'vs',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 10.0,),
                    Text(
                      model.awayTitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Expanded(child: SizedBox(width: 100.0,)),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 18.0,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0,),
                      child: Text(
                        model.matchType,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: blue,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    Center(
                      child: Text(
                        model.matchStatus,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  child: SizedBox(
                    height: 18.0,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => model.screen,));
                  },
                  child: Text(
                    i == 2? 'View Result' : 'View Details',
                    style: TextStyle(
                      color: green,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(width: 10.0,),
              ],
            ),
            const SizedBox(width: 17.0,),
          ],
        ),
      )
    ],
  ),
);