
import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';

Widget teamWidget({required String logo, required String title,}) => Column(
  children: [
    Container(
      padding: const EdgeInsets.all(15.0),
      height: 100.0,
      width: 98.0,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF393B4B), width: 1.0,),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Image.asset(logo),
    ),
    const SizedBox(height: 8.0,),
    Text(title,
      style: TextStyle(color: white, fontSize: 14.0, fontWeight: FontWeight.w500,),),
  ],
);