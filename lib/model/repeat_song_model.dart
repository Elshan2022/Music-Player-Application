class RepeatModel {
  final bool isRepeat;
  RepeatModel({
    required this.isRepeat,
  });

  RepeatModel copyWith({
    bool? isRepeat,
  }) {
    return RepeatModel(
      isRepeat: isRepeat ?? this.isRepeat,
    );
  }
}
