import 'dart:io';

import 'package:fitnick/domain/exercise/models/exercise.dart';
import 'package:fitnick/fitnick_icons.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:flutter/material.dart';

class ExerciseThumbnail extends StatelessWidget {
  final Exercise exercise;
  final double size;
  const ExerciseThumbnail(
      {Key key,
      @required this.exercise,
      this.size = FitnickTheme.exerciseThumbnailSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(FitnickTheme.radius),
      child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          child: exercise.thumbnailPath.fold(
              () => Icon(
                    FitnickIcons.logo,
                    size: size / 2.2,
                    color: Colors.grey,
                  ),
              (path) => AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image.file(File(path), fit: BoxFit.cover),
                  ))),
    );
  }
}
