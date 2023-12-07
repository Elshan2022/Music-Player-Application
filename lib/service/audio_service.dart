import 'package:flutter_music_player/model/audio_model.dart';
import 'package:flutter_music_player/viewModel/audios_list.dart';

class AudioService {
  Future<List<AudioModel>> fetchAudious() async {
    await Future.delayed(const Duration(seconds: 3));
    return AudioAsset.audiosAssetList;
  }
}
