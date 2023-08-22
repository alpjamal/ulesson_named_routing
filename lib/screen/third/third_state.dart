part of 'third_bloc.dart';

class ThirdState extends Equatable {
  final int activeIndex;

  const ThirdState({
    this.activeIndex = 0,
  });

  ThirdState copyWith({
    int? activeIndex,
  }) {
    return ThirdState(
      activeIndex: activeIndex ?? this.activeIndex,
    );
  }

  @override
  List<Object?> get props => [activeIndex];
}
