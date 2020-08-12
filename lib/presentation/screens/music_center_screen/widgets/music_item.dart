import 'package:fitnick/domain/music/models/music.dart';
import 'package:flutter/material.dart';

class MusicItem extends StatelessWidget {
  final Music music;
  final void Function() onPressed;

  const MusicItem({Key key, @required this.music, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          if (onPressed != null) {
            onPressed();
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: music.isPlaying ? Colors.red : Colors.blue,
              child: Icon(music.isPlaying ? Icons.stop : Icons.play_arrow,
                  color: Colors.white),
            ),
            title: Text(music.name),
          ),
        ),
      ),
    );
  }
}
