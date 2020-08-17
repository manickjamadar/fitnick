part of 'tab_cubit.dart';

@freezed
abstract class TabState implements _$TabState {
  const TabState._();
  const factory TabState(
      {@required List<Tab> tabs, @required int currentTabIndex}) = _TabState;

  factory TabState.initial() {
    return TabState(tabs: [
      Tab(title: "Workout", icon: MyIcons.workout),
      Tab(title: "Exercise", icon: MyIcons.exercise)
    ], currentTabIndex: 0);
  }
}
