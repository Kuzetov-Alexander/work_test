import 'package:equatable/equatable.dart';

abstract class ApiBlocEvent extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class GetApiEvent extends ApiBlocEvent {}

class DownloadingQueryEvent extends ApiBlocEvent {}
