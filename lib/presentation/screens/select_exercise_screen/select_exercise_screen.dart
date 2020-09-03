import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/application/exercise/filtered_exercise/filtered_exercise_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/presentation/core/fitnick_actions/fitnick_actions.dart';
import 'package:fitnick/presentation/core/widgets/exercise_filter_controller.dart';
import 'package:fitnick/presentation/core/widgets/exercise_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectExerciseScreen extends StatefulWidget {
  static const String routeName = "/select_exercise";

  const SelectExerciseScreen({Key key}) : super(key: key);
  static Widget generateRoute(
    BuildContext context,
  ) {
    return BlocProvider<FilteredExerciseBloc>(
      create: (_) => FilteredExerciseBloc(
          exerciseHubBloc: BlocProvider.of<ExerciseHubBloc>(context)),
      child: SelectExerciseScreen(),
    );
  }

  @override
  _SelectExerciseScreenState createState() => _SelectExerciseScreenState();
}

class _SelectExerciseScreenState extends State<SelectExerciseScreen> {
  List<Exercise> _selectedExerciseList;
  @override
  void initState() {
    super.initState();
    _selectedExerciseList = [];
  }

  void _addSelectedExercise(Exercise exercise) {
    setState(() {
      _selectedExerciseList.add(exercise);
    });
  }

  bool isExerciseSelected(Exercise exercise) {
    return _selectedExerciseList.any((e) => e.id == exercise.id);
  }

  void _removeSelectedExercise(Exercise exercise) {
    setState(() {
      _selectedExerciseList.removeWhere((e) => e.id == exercise.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilteredExerciseBloc, FilteredExerciseState>(
      builder: (_, state) => Scaffold(
          appBar: AppBar(
            title: Text("Select Exercise"),
            actions: <Widget>[buildDoneButton(context)],
          ),
          body: Builder(
            builder: (_) {
              if (state.isLoading) {
                return buildLoading();
              }
              return state.exercises.fold(
                  () => buildNoExercise(),
                  (List<Exercise> exercises) =>
                      buildLoaded(context, state, exercises));
            },
          )),
    );
  }

  Widget buildNoExercise() {
    return Center(child: Text("No Exercises Available"));
  }

  Widget buildLoaded(BuildContext context, FilteredExerciseState state,
      List<Exercise> exercises) {
    return Stack(
      children: <Widget>[
        buildExerciseList(context, state, exercises),
      ],
    );
  }

  Widget buildExerciseList(
    BuildContext context,
    FilteredExerciseState state,
    List<Exercise> exercises,
  ) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index == 0) {
          return buildListHeader(context, state);
        }
        final realIndex = index - 1;
        final exercise = exercises[realIndex];
        final selected = isExerciseSelected(exercise);
        return Container(
            margin: EdgeInsets.all(10),
            child: ExerciseTile(
              onPressed: () => FitnickActions(context)
                  .goExerciseDetailScreen(context, exercise: exercise),
              exercise: exercise,
              trailing: IconButton(
                  splashColor: Colors.transparent,
                  icon: AnimatedCrossFade(
                    crossFadeState: selected
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: Duration(milliseconds: 300),
                    firstChild: Icon(Icons.radio_button_checked,
                        color: Theme.of(context).primaryColor),
                    secondChild:
                        Icon(Icons.radio_button_unchecked, color: Colors.grey),
                  ),
                  onPressed: () {
                    if (!selected) {
                      _addSelectedExercise(exercise);
                    } else {
                      _removeSelectedExercise(exercise);
                    }
                  }),
            ));
      },
      itemCount: exercises.length + 1,
    );
  }

  Widget buildListHeader(BuildContext context, FilteredExerciseState state) {
    return ExerciseFilterController(
      exercise: state.filteredExercise,
      searchTerm: state.searchTerm,
      onSearched: (value) => _onSearch(context, value),
      onFilter: () => FitnickActions(context).goExerciseFilterScreen(),
      onExerciseChanged: (newExercise) =>
          _onFilterExerciseChanged(context, newExercise),
    );
  }

  void _onSearch(BuildContext context, String searchTerm) {
    BlocProvider.of<FilteredExerciseBloc>(context)
        .add(FilteredExerciseEvent.searched(term: searchTerm));
  }

  void _onFilterExerciseChanged(BuildContext context, Exercise exercise) {
    BlocProvider.of<FilteredExerciseBloc>(context)
        .add(FilteredExerciseEvent.filtered(exercise));
  }

  Widget buildDoneButton(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context, _selectedExerciseList),
      icon: Icon(Icons.check),
    );
  }

  Widget buildLoading() {
    return Center(child: CircularProgressIndicator());
  }

  Widget buildLoadedError(_) {
    return Text("Exercise Loaded Error , Try again ");
  }
}
