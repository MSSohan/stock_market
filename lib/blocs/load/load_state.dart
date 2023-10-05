part of 'load_bloc.dart';

abstract class LoadState extends Equatable {
  const LoadState();
}

class LoadInitialState extends LoadState {
  @override
  List<Object> get props => [];
}

class LoadInProgressState extends LoadState {
  @override
  List<Object> get props => [];
}

class LoadSuccessState extends LoadState {
  final List<dynamic> data;
  final List<String> tradeCodes;
  LoadSuccessState(this.data, {required this.tradeCodes});
  @override
  List<Object> get props => [data, tradeCodes];
}
