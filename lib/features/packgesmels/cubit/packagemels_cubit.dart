
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meals/core/models/meal_model.dart';

import 'package:meta/meta.dart';

part 'packagemels_state.dart';

class PackagemelsCubit extends Cubit<PackagemelsState> {
  PackagemelsCubit() : super(PackagemelsInitial());
  Dio dio = Dio();

  List<PackageMeal> packageMeals = [];
  List<Product> products = [];
  String option = "وجبة رئيسية";

  Future<void> getPackagemels() async {
    try {
      emit(PackagemelsLoading());

      final response = await dio.get(
        'https://dimagh.sa/api/retrieve_products?package_id=1',
      );

      final data = response.data['subpackages'];
      if (data != null && data.length > 1) {
        final mealsData = data[1]['package_meals'];
        packageMeals =
            (mealsData as List).map((e) => PackageMeal.fromJson(e)).toList();
      }

      print(packageMeals[0].tags[0].products[0].name['ar']);
    } catch (e) {
      emit(PackagemelsError(e.toString()));
    }
  }

Future<void> returnprouctinseemtag() async {
  emit(PackagemelsLoading());
  await getPackagemels();

  products.clear(); 

  for (int i = 0; i < packageMeals.length; i++) {
    for (int j = 0; j < packageMeals[i].tags.length; j++) {
      final tag = packageMeals[i].tags[j];
      final tagName = tag.name['ar'] ?? '';
      if (option==tagName) {
      
          products.addAll(tag.products);
        
      }


      if (option == "وجبة رئيسية" && (tagName.contains('دجاج') || tagName.contains('سمك'))) {
        products.addAll(tag.products);
      }

   
      
    }
  }

  emit(PackagemelsSuccess(products));
}

  void changeoption(String title) {
    option = title;
    returnprouctinseemtag();
  }

}
