import 'package:dartz/dartz.dart';
import 'package:fitnick/presentation/screens/exercise_form/widgets/video_viewer.dart';
import 'package:flutter/material.dart';

class VideoPreview extends StatelessWidget {
  final Option<String> path;
  const VideoPreview({Key key, @required this.path}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final videoPath = path.fold(() => null, (a) => a);
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            // border: Border.all(color: Colors.grey)
          ),
          child: videoPath == null
              ? buildNoVideoPreview()
              : VideoViewer(
                  key: ValueKey(videoPath),
                  path: videoPath,
                ),
        ),
      ),
    );
  }

  Widget buildNoVideoPreview() {
    return Center(
      child: Text("No Video available"),
    );
  }
}
