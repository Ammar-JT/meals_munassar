import 'package:flutter/material.dart';

class FilterDayWidget extends StatelessWidget {
  const FilterDayWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return      Container(
                margin: const EdgeInsets.all(4),
                height: 30,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(child: Text('$title')),
              );
  }
}