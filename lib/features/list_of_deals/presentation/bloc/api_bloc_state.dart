import 'package:equatable/equatable.dart';

abstract interface class ApiBlocState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class InitialState extends ApiBlocState {}

class GetApiQueryState extends ApiBlocState {
  final List<dynamic> queryData;

  GetApiQueryState({required this.queryData});
}
