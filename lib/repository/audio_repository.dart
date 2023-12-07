import 'package:flutter_music_player/model/audio_model.dart';
import 'package:flutter_music_player/service/audio_service.dart';

class AudioRepository {
  final AudioService _audioService = AudioService();

  Future<List<AudioModel>> fetchSongs() async {
    return await _audioService.fetchAudious();
  }
}
