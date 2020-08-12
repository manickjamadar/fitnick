import 'package:fitnick/application/music/music_hub/music_hub_cubit.dart';
import 'package:fitnick/domain/music/models/music.dart';
import 'package:fitnick/presentation/screens/music_center_screen/widgets/music_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MusicCenterScreen extends StatelessWidget {
  static const String routeName = "/music-center";
  static Widget generateRoute() => MusicCenterScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fitnick Music Center"),
      ),
      body: BlocBuilder<MusicHubCubit, MusicHubState>(
        builder: (_, state) {
          return state.when(
              loading: buildLoading,
              loaded: buildLoaded,
              loadedError: buildLoadedError);
        },
      ),
    );
  }

  Widget buildLoading() {
    return Center(child: CircularProgressIndicator());
  }

  Widget buildLoadedError() {
    return Center(
      child: Text("Something went wrong with music"),
    );
  }

  Widget buildLoaded(List<Music> musicList) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
        itemBuilder: (_, index) {
          return MusicItem(
            music: musicList[index],
          );
        },
        itemCount: musicList.length,
      ),
    );
  }
}
