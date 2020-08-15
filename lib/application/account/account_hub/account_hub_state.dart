part of 'account_hub_cubit.dart';

@freezed
abstract class AccountHubState with _$AccountHubState {
  const factory AccountHubState.loading() = _AccountHubLoading;
  const factory AccountHubState.loaded({@required Account account}) =
      _AccountHubLoaded;
}
