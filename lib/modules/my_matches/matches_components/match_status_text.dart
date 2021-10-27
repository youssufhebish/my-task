import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';

Widget matchStatusText({required String text}) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 6.5),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w600,
          color: grey,
        ),
      ),
    );
