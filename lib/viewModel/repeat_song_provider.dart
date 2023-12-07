import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_music_player/model/repeat_song_model.dart';
import 'package:flutter_music_player/viewModel/audio_player.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RepeatSongNotifier extends StateNotifier<RepeatModel> {
  RepeatSongNotifier(this.ref) : super(RepeatModel(isRepeat: false));
  final Ref ref;

  Future<void> repeatSong() async {
    final player = ref.watch(audioPlayerInstance);
    if (state.isRepeat == false) {
      await player.setReleaseMode(ReleaseMode.loop);
      state = state.copyWith(isRepeat: true);
    } else if (state.isRepeat == true) {
      await player.setReleaseMode(ReleaseMode.release);
      state = state.copyWith(isRepeat: false);
    }
  }
}

final repeatSongProvider =
    StateNotifierProvider<RepeatSongNotifier, RepeatModel>((ref) {
  return RepeatSongNotifier(ref);
});
