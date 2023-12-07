import 'package:freezed_annotation/freezed_annotation.dart';
part 'audio_model.g.dart';
part 'audio_model.freezed.dart';

@freezed
class AudioModel with _$AudioModel{
  const factory AudioModel({
    required String audioName,
    required String artistName,
    required String audioImage,
    required String audioPath,

  }) = _AudioModel;

  factory AudioModel.fromJson(Map<String,dynamic> json) => _$AudioModelFromJson(json);
}