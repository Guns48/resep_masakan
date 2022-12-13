part of 'resep_cubit.dart';

@immutable
abstract class ResepState {}

class ResepInitial extends ResepState {}

class ResepMasakan extends ResepState {
  final ResepModel data;
  ResepMasakan(this.data);
}
