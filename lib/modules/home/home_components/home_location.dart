import 'package:flutter/material.dart';
import 'package:my_task/components/colors.dart';

class HomeLocation extends StatelessWidget {
  const HomeLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dark,
      height: 40.0,
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                const Spacer(),
                Image.asset('assets/images/icons/marker.png',
                  width: 13.0,),
                const SizedBox(width: 10.0,),
                Text('Pariser Platz....',
                  style: TextStyle(color: grey, fontSize: 12.0, fontWeight: FontWeight.w400,),),
                const Spacer(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(Icons.close, color: grey, size: 15.0,),
          ),
        ],
      ),
    );
  }
}
