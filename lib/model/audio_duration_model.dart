class AudioDurationModel {
  Duration? duration;
  Duration? position;
  AudioDurationModel({
    required this.duration,
    required this.position,
  });

  AudioDurationModel copyWith({
    Duration? duration,
    Duration? position,
  }) {
    return AudioDurationModel(
      duration: duration ?? this.duration,
      position: position ?? this.position,
    );
  }
}
