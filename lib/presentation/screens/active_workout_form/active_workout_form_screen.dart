import 'package:dartz/dartz.dart';
import 'package:fitnick/application/account/account_manager/account_manager_cubit.dart';
import 'package:fitnick/application/active_workout/active_workout_form/active_workout_form_cubit.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/presentation/screens/active_workout_form/widgets/active_workout_form_handler.dart';
import 'package:fitnick/presentation/screens/store_screen/store_screen.dart';
import 'package:fitnick/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "../../../application/account/account_hub/account_hub_cubit.dart";

class ActiveWorkoutFormScreen extends StatelessWidget {
  final String title;
  const ActiveWorkoutFormScreen({Key key, @required this.title})
      : super(key: key);
  static const routeName = "/active_workout_form";
  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountManagerCubit, AccountManagerState>(
      listener: (_, state) {
        state.maybeWhen(
            orElse: () {},
            spendSuccessFul: (coin) => _onWorkoutSave(context),
            inSufficientBalance: () => _onInSufficientBalance(context));
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: <Widget>[buildSaveButton(context)],
        ),
        body: ActiveWorkoutFormHandler(),
      ),
    );
  }

  Widget buildSaveButton(BuildContext context) {
    return BlocBuilder<ActiveWorkoutFormCubit, ActiveWorkoutFormState>(
      builder: (_, state) => IconButton(
        onPressed: !state.isAdding && state.activeWorkout.isValid
            ? () => _onCheckButtonPressed(context)
            : null,
        icon: Icon(Icons.check),
      ),
    );
  }

  void _onInSufficientBalance(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => StoreScreen.generateRoute(context)));
  }

  void _onCheckButtonPressed(BuildContext context) {
    BlocProvider.of<AccountManagerCubit>(context).spend(ActiveWorkout.price);
  }

  void _onWorkoutSave(BuildContext context) {
    BlocProvider.of<ActiveWorkoutFormCubit>(context).saved();
  }

  static Widget generateRoute(
      BuildContext context, Option<ActiveWorkout> activeWorkoutOption) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ActiveWorkoutFormCubit>(
          create: (_) => locator<ActiveWorkoutFormCubit>()
            ..init(activeWorkoutOption: activeWorkoutOption),
        ),
        BlocProvider<AccountManagerCubit>(
          create: (_) => AccountManagerCubit(
              accountHubCubit: BlocProvider.of<AccountHubCubit>(context)),
        )
      ],
      child: ActiveWorkoutFormScreen(
          title: activeWorkoutOption.fold(
              () => "Add Workout", (a) => "Edit Workout")),
    );
  }
}
