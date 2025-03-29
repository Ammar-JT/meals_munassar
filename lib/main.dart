import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:meals/core/network/network.dart';
import 'package:meals/features/packgesmels/cubit/packagemels_cubit.dart';
import 'package:meals/features/packgesmels/repo/repo.dart';
import 'package:meals/features/packgesmels/view/packages_mels_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => PackagemelsCubit(
        ),
        child: PackagesMelsView(),
      ),
    );
  }
}
