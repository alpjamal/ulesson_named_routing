part of 'third_bloc.dart';

abstract class ThirdEvent extends Equatable {
  const ThirdEvent();
}

class ChangePageName extends ThirdEvent {
  final int index;

  const ChangePageName({
    required this.index,
  });

  @override
  List<Object?> get props => [index];
}
