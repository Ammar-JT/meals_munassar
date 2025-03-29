part of 'packagemels_cubit.dart';

@immutable
sealed class PackagemelsState {}

final class PackagemelsInitial extends PackagemelsState {

}

final class PackagemelsLoading extends PackagemelsState {

}

final class PackagemelsSuccess<T> extends PackagemelsState {
   final List<T> packageMeals;

  PackagemelsSuccess(this.packageMeals);


}



final class PackagemelsError extends PackagemelsState {
  final String error;
  PackagemelsError(this.error);
}
