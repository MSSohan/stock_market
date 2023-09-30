import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  @override
  Stream<DetailsState> mapEventToState(
    DetailsEvent event,
  ) async* {}

  @override
  DetailsState get initialState => throw UnimplementedError();
}
