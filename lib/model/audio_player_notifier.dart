class AudioPlayerModel {
  final bool isPlaying;
  AudioPlayerModel({
    required this.isPlaying,
  });

  AudioPlayerModel copyWith({
    bool? isPlaying,
  }) {
    return AudioPlayerModel(
      isPlaying: isPlaying ?? this.isPlaying,
    );
  }
}
