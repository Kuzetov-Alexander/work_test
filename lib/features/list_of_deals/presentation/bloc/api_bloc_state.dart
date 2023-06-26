import 'package:equatable/equatable.dart';

abstract interface class ApiBlocState extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitialState extends ApiBlocState {}

class GetApiQueryState extends ApiBlocState {
  final List<dynamic> queryData;

  GetApiQueryState({required this.queryData});

  @override
  List<Object?> get props => [queryData];
}

class DownloadingQueryState extends ApiBlocState {}
