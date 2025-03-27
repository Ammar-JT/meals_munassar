import 'package:flutter/material.dart';
import 'package:meals/core/style/app_text_style.dart';

class MealContainer extends StatelessWidget {
  const MealContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('وجبة رئيسية',style:  AppTextStyle.boldsize20black),
             ),
          Image.network('https://picsum.photos/250?image=9'),
        
        ]
          ),
    );
  }
}


