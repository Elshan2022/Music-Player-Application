import 'package:flutter_music_player/model/audio_duration_model.dart';
import 'package:flutter_music_player/viewModel/audio_player.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final audioDurationProvider =
    NotifierProvider<AudioDurationNotifier, AudioDurationModel>(
  AudioDurationNotifier.new,
);

class AudioDurationNotifier extends Notifier<AudioDurationModel> {
  @override
  build() {
    return AudioDurationModel(
      duration: const Duration(),
      position: const Duration(),
    );
  }

  audioDuration() {
    final player = ref.watch(audioPlayerInstance);
    player.onDurationChanged.listen((Duration audioDuration) {
      state = state.copyWith(duration: audioDuration);
    });
  }

  audioPosition() {
    final player = ref.watch(audioPlayerInstance);
    player.onPositionChanged.listen((Duration audioPosition) {
      state = state.copyWith(position: audioPosition);
    });
  }
}
