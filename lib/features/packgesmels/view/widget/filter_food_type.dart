import 'package:flutter/material.dart';
import 'package:meals/features/packgesmels/view/widget/filter_day_widget.dart';

class FilterFoodType extends StatelessWidget {
   FilterFoodType({super.key});
  List foodtypes = ['فطور', 'وجبة رئيسية', ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ...List.generate(
            
            foodtypes.length,
            (index) => FilterDayWidget(title: foodtypes[index]),
          ),
        ],
      ),
    );
  }
}
