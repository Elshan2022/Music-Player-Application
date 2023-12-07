import 'package:flutter_music_player/gen/assets.gen.dart';
import 'package:flutter_music_player/model/audio_model.dart';

class AudioAsset {
  static List<AudioModel> audiosAssetList = [
    AudioModel(
      audioName: "All My Life",
      artistName: "Lil Durk",
      audioImage: Assets.images.allMyLife.path,
      audioPath: "audious/all_my_life.mp3",
    ),
    AudioModel(
      audioName: "Another Love",
      artistName: "Tom Odell",
      audioImage: Assets.images.anotherLove.path,
      audioPath: "audious/another_love.mp3",
    ),
    AudioModel(
      audioName: "Beggin",
      artistName: "Måneskin",
      audioImage: Assets.images.beggin.path,
      audioPath: "audious/beggin.mp3",
    ),
    AudioModel(
      audioName: "Here we go",
      artistName: "Norman",
      audioImage: Assets.images.hereWeGo.path,
      audioPath: "audious/here_we_go.mp3",
    ),
    AudioModel(
      audioName: "Lose Control",
      artistName: "Teddy Swims",
      audioImage: Assets.images.loseControl.path,
      audioPath: "audious/lose_control.mp3",
    ),
    AudioModel(
      audioName: "Laughing on the Outside",
      artistName: "Bernadette Carroll",
      audioImage: Assets.images.laughingOutSide.path,
      audioPath: "audious/loughing_out_side.mp3",
    ),
    AudioModel(
      audioName: "Mockingbird",
      artistName: "Eminem",
      audioImage: Assets.images.mockinbird.path,
      audioPath: "audious/mockingbird.mp3",
    ),
    AudioModel(
      audioName: "Somebody you loved",
      artistName: "Lewis Capaldi",
      audioImage: Assets.images.someBodyYouLoved.path,
      audioPath: "audious/somebody_you_loved.mp3",
    ),
  ];
}
