import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_music_player/model/audio_model.dart';
import 'package:flutter_music_player/model/audio_player_notifier.dart';
import 'package:flutter_music_player/viewModel/audios_list.dart';
import 'package:flutter_music_player/viewModel/selected_index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final audioPlayerInstance = Provider<AudioPlayer>((ref) {
  return AudioPlayer();
});

class AudioPlayerNotifier extends Notifier<AudioPlayerModel> {
  @override
  build() {
    return AudioPlayerModel(isPlaying: false);
  }

  final List<AudioModel> _audioAsset = AudioAsset.audiosAssetList;

  playAudio(String audioPath) async {
    final player = ref.watch(audioPlayerInstance);

    if (state.isPlaying == false) {
      await player.play(AssetSource(audioPath));
      state = state.copyWith(isPlaying: true);
    } else if (state.isPlaying == true) {
      await player.pause();
      state = state.copyWith(isPlaying: false);
    }
  }

  skibNextSong() async {
    final index = ref.watch(selectedIndexProvider.notifier);
    final player = ref.watch(audioPlayerInstance);
    if (index.state < _audioAsset.length - 1) {
      index.state = index.state + 1;
      await player.play(AssetSource(_audioAsset[index.state].audioPath));
      state = state.copyWith(isPlaying: true);
    } else {
      index.state = 0;
    }
  }

  goPreviousSong() async {
    final index = ref.watch(selectedIndexProvider.notifier);
    final player = ref.watch(audioPlayerInstance);
    if (index.state > 0) {
      index.state = index.state - 1;
      await player.play(AssetSource(_audioAsset[index.state].audioPath));
      state = state.copyWith(isPlaying: true);
    } else {
      index.state = 0;
    }
  }

  suffleSong() async {
    final player = ref.watch(audioPlayerInstance);
    final selectedIndex = ref.watch(selectedIndexProvider.notifier);
    final index = Random().nextInt(_audioAsset.length);
    selectedIndex.state = index;
    await player.play(AssetSource(_audioAsset[selectedIndex.state].audioPath));
    state = state.copyWith(isPlaying: true);
  }
}

final audioPlayerNotifierProvider =
    NotifierProvider<AudioPlayerNotifier, AudioPlayerModel>(
  AudioPlayerNotifier.new,
);
