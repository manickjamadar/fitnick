import 'package:bloc/bloc.dart';
import 'package:fitnick/admin/domain/models/tab/tab.dart';
import 'package:fitnick/presentation/core/my_icons.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_state.dart';
part 'tab_cubit.freezed.dart';

class TabCubit extends Cubit<TabState> {
  TabCubit() : super(TabState.initial());

  //event
  void changeTab(int index) {
    if (index < state.tabs.length && index >= 0) {
      emit(state.copyWith(currentTabIndex: index));
    }
  }
}
