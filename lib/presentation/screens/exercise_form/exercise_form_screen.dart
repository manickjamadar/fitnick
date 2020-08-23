import 'package:dartz/dartz.dart';
import 'package:fitnick/application/account/account_manager/account_manager_cubit.dart';
import 'package:fitnick/application/exercise/exercise_form/exercise_form_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/exercise_form_handler.dart';
import 'package:fitnick/presentation/screens/store_screen/store_screen.dart';
import 'package:fitnick/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "../../../application/account/account_hub/account_hub_cubit.dart";

class ExerciseFormScreen extends StatelessWidget {
  final String title;
  static const routeName = "/exercise_form";

  const ExerciseFormScreen({Key key, this.title = "Add Exercise"})
      : super(key: key);
  static Widget generateRoute(
      BuildContext context, Option<Exercise> exerciseOption) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExerciseFormBloc>(
          create: (_) => locator<ExerciseFormBloc>()
            ..add(ExerciseFormEvent.init(exerciseOption)),
        ),
        BlocProvider<AccountManagerCubit>(
            create: (_) => AccountManagerCubit(
                accountHubCubit: BlocProvider.of<AccountHubCubit>(context)))
      ],
      child: ExerciseFormScreen(
          title: exerciseOption.fold(
              () => "Add Exercise", (a) => "Edit Exercise")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountManagerCubit, AccountManagerState>(
      listener: (_, state) {
        state.maybeWhen(
            orElse: () {},
            spendSuccessFul: (coin) => _onExerciseAdded(context),
            inSufficientBalance: () => _onInSufficientBalance(context));
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
          ),
          actions: <Widget>[buildSaveButton(context)],
        ),
        body: ExerciseFormHandler(),
      ),
    );
  }

  Widget buildSaveButton(BuildContext context) {
    return BlocBuilder<ExerciseFormBloc, ExerciseFormState>(
      builder: (context, state) {
        return IconButton(
          onPressed: state.isAdding || !state.exercise.isValid
              ? null
              : () => _onCheckButtonPressed(context),
          icon: Icon(Icons.check),
        );
      },
    );
  }

  void _onCheckButtonPressed(BuildContext context) {
    BlocProvider.of<AccountManagerCubit>(context).spend(Exercise.price);
  }

  void _onExerciseAdded(BuildContext context) {
    BlocProvider.of<ExerciseFormBloc>(context).add(ExerciseFormEvent.added());
  }

  void _onInSufficientBalance(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => StoreScreen.generateRoute(context)));
  }
}
