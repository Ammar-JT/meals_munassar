import 'package:flutter/material.dart';

import 'package:meals/features/packgesmels/view/widget/dayes_list_view.dart';
import 'package:meals/features/packgesmels/view/widget/filter_day_widget.dart';
import 'package:meals/features/packgesmels/view/widget/filter_food_type.dart';
import 'package:meals/features/packgesmels/view/widget/meal_container.dart';

class PackagesMelsView extends StatelessWidget {
  const PackagesMelsView({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(title: const Text(' باقة الدايت بلس'), centerTitle: true),
      body: Column(
        spacing: 20,
        children: [
      DayesListView() ,
       FilterFoodType() ,
          MealContainer()
        ],
      ),
    );
  }
}

