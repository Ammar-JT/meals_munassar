import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/core/style/app_text_style.dart';
import 'package:meals/features/packgesmels/cubit/packagemels_cubit.dart';

class MealContainer extends StatelessWidget {
  const MealContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PackagemelsCubit, PackagemelsState>(
      builder: (context, state) {
       
        if (state is PackagemelsLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is PackagemelsSuccess) {
          return Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
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
                        child: Text(
                          state.packageMeals[index].name['ar'],
                          style: AppTextStyle.boldsize20black,
                        ),
                      ),
                      Image.network('https://picsum.photos/250?image=9'),
                    ],
                  ),
                );
              },
              itemCount: state.packageMeals.length,
            ),
          );
   
        }
               return Container();
      },
      
    );
  }
}
