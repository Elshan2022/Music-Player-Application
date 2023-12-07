// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioModelImpl _$$AudioModelImplFromJson(Map<String, dynamic> json) =>
    _$AudioModelImpl(
      audioName: json['audioName'] as String,
      artistName: json['artistName'] as String,
      audioImage: json['audioImage'] as String,
      audioPath: json['audioPath'] as String,
    );

Map<String, dynamic> _$$AudioModelImplToJson(_$AudioModelImpl instance) =>
    <String, dynamic>{
      'audioName': instance.audioName,
      'artistName': instance.artistName,
      'audioImage': instance.audioImage,
      'audioPath': instance.audioPath,
    };
