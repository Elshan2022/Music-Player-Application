import 'package:flutter/material.dart';
import 'package:flutter_music_player/model/audio_model.dart';
import 'package:flutter_music_player/repository/audio_repository.dart';
import 'package:flutter_music_player/view/home_page.dart';

abstract class HomePageViewModel extends State<HomePage> {
  List<AudioModel>? audiousList;
  Future<List<AudioModel>>? getAudious;
  final AudioRepository _audioRepository = AudioRepository();
  _fetchAudious() async {
    audiousList = await getAudious;
  }

  @override
  void initState() {
    getAudious = _audioRepository.fetchSongs();
    _fetchAudious();
    super.initState();
  }
}
