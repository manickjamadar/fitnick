part of 'tab_cubit.dart';

@freezed
abstract class TabState implements _$TabState {
  const TabState._();
  const factory TabState(
      {@required List<PageTab> tabs,
      @required int currentTabIndex,
      @required PageController pageController}) = _TabState;

  factory TabState.initial() {
    return TabState(
        tabs: [], currentTabIndex: -1, pageController: PageController());
  }
}
