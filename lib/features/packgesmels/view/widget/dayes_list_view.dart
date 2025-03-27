import 'package:flutter/material.dart';

class DayesListView extends StatelessWidget {
  const DayesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
            height: 70,

      
            width: double.infinity,
            child: ListView.builder(
              reverse: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 40,
                  width: 40,
                  child:  Center(child: Text('اليوم\n ${index + 1}')),
                );
              },
              itemCount: 10,
            ),
          );
  }
}