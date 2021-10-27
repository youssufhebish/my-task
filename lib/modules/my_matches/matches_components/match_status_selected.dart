import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';

Widget matchStatusSelected({required String text}) => Container(
  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 6.5,),
  decoration: BoxDecoration(
    color: blueStroke,
    borderRadius: BorderRadius.circular(12.0),
  ),
  child: Text(
    text,
    style: const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  ),
);