import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'third_event.dart';

part 'third_state.dart';

class ThirdBloc extends Bloc<ThirdEvent, ThirdState> {
  ThirdBloc() : super(const ThirdState()) {
    on<ChangePageName>(_changeTabIndex);
  }

  _changeTabIndex(ChangePageName event, Emitter<ThirdState> emit) {
    emit(state.copyWith());
  }
}
