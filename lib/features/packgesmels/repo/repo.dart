// import 'dart:convert';
// import 'package:meals/core/models/meal_model.dart';
// import 'package:meals/core/network/network.dart';

// class Repopackgesmels {
//   final BaseNetwork baseNetwork;

//   Repopackgesmels({required this.baseNetwork});

//   Future<List<MealModel>> getpackgesmels({
//     required String url,
//     Map<String, String>? query, // Changed query type to match HttpNetwork
//   }) async {
//     // Perform GET request
//     var response = await baseNetwork.get(url: url, query: query);

//     // Decode JSON response manually since http package returns raw JSON text
//     Map<String, dynamic> jsonResponse = json.decode(response);

//     List<MealModel> meals = [];

//     if (jsonResponse.containsKey("subpackages") &&
//         jsonResponse["subpackages"].length > 1) {
//       for (var item in jsonResponse["subpackages"][1]['package_meals']) {
//         if (item['tags'] != null && item['tags']['products'] != null) {
//           for (var product in item['tags']['products']) {
//             MealModel meal = MealModel();
//             meal.name = product['name']['ar']; // Assign Arabic name
//             meals.add(meal);
//           }
//         }
//       }
//     }

//     return meals;
//   }
// }
