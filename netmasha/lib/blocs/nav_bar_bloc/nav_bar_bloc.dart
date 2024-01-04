import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/nav_bar_bloc/nav_bar_event.dart';
import 'package:netmasha/blocs/nav_bar_bloc/nav_bar_state.dart';

class NavBarBloc extends Bloc<NavBarEvent, NavBarState> {
  NavBarBloc() : super(GetIndex(selected: 0)) {
    on<ChangePageEvent>((event, emit) {
      emit(GetIndex(selected: event.selected));
    });
  }
}
