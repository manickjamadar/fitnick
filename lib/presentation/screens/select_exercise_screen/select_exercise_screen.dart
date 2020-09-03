import 'package:fitnick/application/exercise/exercise_hub/exercise_hub_bloc.dart';
import 'package:fitnick/application/exercise/filtered_exercise/filtered_exercise_bloc.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_level.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_target.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_tool.dart';
import 'package:fitnick/domain/exercise/models/sub_models/exercise_type.dart';
import 'package:fitnick/presentation/core/fitnick_actions/fitnick_actions.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/core/widgets/exercise_tile.dart';
import 'package:fitnick/presentation/core/widgets/raw_exercise_tile.dart';
import 'package:fitnick/presentation/core/widgets/search_bar.dart';
import 'package:fitnick/presentation/screens/exercise_filter_screen/exercise_filter_screen.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/delete_chip.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/exercise_item.dart';
import 'package:fitnick/presentation/screens/home/widgets/exercise/exercise_item_type.dart';
import 'package:fitnick/presentation/screens/select_exercise_screen/widgets/removable_chip.dart';
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
            actions: <Widget>[
              buildFilterButton(context),
              buildDoneButton(context)
            ],
          ),
          body: Builder(
            builder: (_) {
              if (state.isLoading) {
                return buildLoading();
              }
              return state.exercises.fold(
                  () => buildNoExercise(),
                  (List<Exercise> exercises) =>
                      buildLoaded(context, exercises, state.searchTerm));
            },
          )),
    );
  }

  Widget buildFilterButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.filter_list, color: Theme.of(context).primaryColor),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => ExerciseFilterScreen.generateRoute(
              BlocProvider.of<FilteredExerciseBloc>(context)),
        ));
      },
    );
  }

  Widget buildNoExercise() {
    return Center(child: Text("No Exercises Available"));
  }

  Widget buildLoaded(
      BuildContext context, List<Exercise> exercises, String searchTerm) {
    return Stack(
      children: <Widget>[
        buildExerciseList(context, exercises, searchTerm),
      ],
    );
  }

  Widget buildExerciseList(
      BuildContext context, List<Exercise> exercises, String searchTerm) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index == 0) {
          return buildListHeader(searchTerm, context);
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

  Widget buildListHeader(String searchTerm, BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: SearchBar(
            value: searchTerm,
            onChanged: (value) {
              BlocProvider.of<FilteredExerciseBloc>(context)
                  .add(FilteredExerciseEvent.searched(term: value));
            },
          ),
        ),
        buildFilterChips(context)
      ],
    );
  }

  Widget buildFilterChips(BuildContext context) {
    return BlocBuilder<FilteredExerciseBloc, FilteredExerciseState>(
      builder: (_, state) {
        print(state.filteredExercise.levels);
        return Wrap(
          spacing: 10,
          runSpacing: 10,
          children: <Widget>[
            ...state.filteredExercise.levels.map((level) => DeleteChip(
                  label: level.name,
                  color: Colors.orange,
                  onDelete: () {
                    onLevelRemoved(state, level, context);
                  },
                )),
            ...state.filteredExercise.tools.map((e) => DeleteChip(
                  label: e.name,
                  color: Colors.green,
                  onDelete: () => onToolRemoved(state, e, context),
                )),
            ...state.filteredExercise.types.map((e) => DeleteChip(
                  label: e.name,
                  color: Colors.purple,
                  onDelete: () => onTypeRemoved(state, e, context),
                )),
            ...state.filteredExercise.primaryTargets.map((e) => DeleteChip(
                  label: e.name,
                  color: Colors.teal,
                  onDelete: () => onPrimaryTargetRemoved(state, e, context),
                )),
            ...state.filteredExercise.secondaryTargets.map((e) => DeleteChip(
                  label: e.name,
                  color: Colors.brown,
                  onDelete: () => onSecondaryTargetRemoved(state, e, context),
                )),
          ],
        );
      },
    );
  }

  void onLevelRemoved(
      FilteredExerciseState state, ExerciseLevel level, BuildContext context) {
    final newLevels = [...state.filteredExercise.levels];
    newLevels.remove(level);
    _onChipRemoved(context, state.filteredExercise.copyWith(levels: newLevels));
  }

  void onToolRemoved(
      FilteredExerciseState state, ExerciseTool tool, BuildContext context) {
    final newList = [...state.filteredExercise.tools];
    newList.remove(tool);
    _onChipRemoved(context, state.filteredExercise.copyWith(tools: newList));
  }

  void onTypeRemoved(
      FilteredExerciseState state, ExerciseType type, BuildContext context) {
    final newList = [...state.filteredExercise.types];
    newList.remove(type);
    _onChipRemoved(context, state.filteredExercise.copyWith(types: newList));
  }

  void onPrimaryTargetRemoved(FilteredExerciseState state,
      ExerciseTarget target, BuildContext context) {
    final newList = [...state.filteredExercise.primaryTargets];
    newList.remove(target);
    _onChipRemoved(
        context, state.filteredExercise.copyWith(primaryTargets: newList));
  }

  void onSecondaryTargetRemoved(FilteredExerciseState state,
      ExerciseTarget target, BuildContext context) {
    final newList = [...state.filteredExercise.secondaryTargets];
    newList.remove(target);
    _onChipRemoved(
        context, state.filteredExercise.copyWith(secondaryTargets: newList));
  }

  void _onChipRemoved(BuildContext context, Exercise exercise) {
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
