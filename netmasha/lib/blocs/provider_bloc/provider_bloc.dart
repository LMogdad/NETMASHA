import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/provider_bloc/provider_event.dart';
import 'package:netmasha/blocs/provider_bloc/provider_state.dart';

class ProviderBloc extends Bloc<ProviderEvent, ProviderState> {
  ProviderBloc() : super(CurrentProviderState(index: 0)) {
    on<GoNextEvent>((event, emit) {
      if (event.index < 4) // 4 stips to complete provider
      {
        emit(
          CurrentProviderState(
            index: event.index + 1,
          ),
        );
      } else {
        emit(EndProviderState());
      }
    });
  }
}
