import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/features/packgesmels/cubit/packagemels_cubit.dart';

import 'package:meals/features/packgesmels/view/widget/dayes_list_view.dart';

import 'package:meals/features/packgesmels/view/widget/filter_food_type.dart';
import 'package:meals/features/packgesmels/view/widget/meal_container.dart';

class PackagesMelsView extends StatefulWidget {
  const PackagesMelsView({super.key});

  @override
  State<PackagesMelsView> createState() => _PackagesMelsViewState();
}

class _PackagesMelsViewState extends State<PackagesMelsView> {
  Future<void> _loadPackageMeals() async {
    await BlocProvider.of<PackagemelsCubit>(context).returnprouctinseemtag();
  }

  @override
  void initState() {
    super.initState();
    _loadPackageMeals();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' باقة الدايت بلس'), centerTitle: true),
      body: Column(
        spacing: 20,
        children: [DayesListView(), FilterFoodType(), MealContainer()],
      ),
    );
  }
}
