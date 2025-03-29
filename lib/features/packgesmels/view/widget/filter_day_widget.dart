import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/features/packgesmels/cubit/packagemels_cubit.dart';


class FilterDayWidget extends StatelessWidget {
  const FilterDayWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    var mycubit = context.watch<PackagemelsCubit>();
    return      GestureDetector(
      onTap: () {
        mycubit.changeoption(title);
      },
      child: Container(
                  margin: const EdgeInsets.all(4),
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                    color: mycubit.option == title ? Colors.green : Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(child: Text(title)),
                ),
    );
  }
}