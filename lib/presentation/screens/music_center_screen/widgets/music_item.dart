import 'package:fitnick/domain/music/models/music.dart';
import 'package:flutter/material.dart';

class MusicItem extends StatelessWidget {
  final Music music;

  const MusicItem({Key key, @required this.music}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(music.isPlaying ? Icons.pause : Icons.play_arrow),
          ),
          title: Text(music.name),
        ),
      ),
    );
  }
}
