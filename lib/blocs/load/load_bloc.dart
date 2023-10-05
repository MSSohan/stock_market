import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:stock_market/data/models/stock_model.dart';
part 'load_event.dart';

part 'load_state.dart';

class LoadBloc extends Bloc<LoadEvent, LoadState> {
  LoadBloc(super.initialState);

  @override
  Stream<LoadState> mapEventToState(
    LoadEvent event,
  ) async* {
    switch (event.runtimeType) {
      case LoadInProgressEvent:
        yield LoadInProgressState();
        break;
      case LoadSuccessEvent:
        yield* _mapLoadSuccessEventToSimport 'dart:async';tate(event);
        break;
    }
  }

  @override
  LoadState get initialState => LoadInitialState();

  Stream<LoadState> _mapLoadSuccessEventToState(LoadSuccessEvent event) async* {
    yield LoadSuccessState(event.jsonResponse, tradeCodes: []);
  }
}
