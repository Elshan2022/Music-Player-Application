import 'package:flutter/material.dart';
import 'package:flutter_music_player/components/app_colors.dart';
import 'package:flutter_music_player/model/audio_model.dart';
import 'package:flutter_music_player/view/mini_player.dart';
import 'package:flutter_music_player/viewModel/audios_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class MiniPlayerViewModel extends State<MiniPlayer> {
  List<AudioModel> audioAsset = AudioAsset.audiosAssetList;
  final List<Icon> playPauseIcon = [
    Icon(Icons.play_arrow_sharp, color: AppColors.primaryDark, size: 25.w),
    Icon(Icons.pause, color: AppColors.primaryDark, size: 25.w)
  ];
  bool isOpen = false;
  final animationDuration = const Duration(milliseconds: 350);

  //play and pause icon posioned
  var playButtonTop = 25.h;
  var playButtonLeft = 320.w;

  //image
  var imageHeigth = 85.0.h;
  var imageWidth = 85.0.w;
  var leftRightMargin = 0.0.w;
  var topMargin = 20.0.h;

  //srtist
  var topPositionArtisName = 60.0.h;
  var leftPositionArtisName = 90.0.w;

  //song
  var topPositionSongName = 30.0.h;
  var leftPositionSongName = 90.0.w;

  calculatePosition(DraggableScrollableNotification notification) {
    setState(() {
      topPositionSongName = notification.extent == 0.13 ? 30.h : 380.h;
      topPositionArtisName = notification.extent == 0.13 ? 60.h : 410.h;
      imageHeigth = notification.extent == 0.13 ? 85.0.h : 300.0.h;
      imageWidth = notification.extent == 0.13 ? 85.0.w : 400.w;
      leftPositionSongName = notification.extent == 0.13 ? 90.w : 10.0.w;
      leftPositionArtisName = notification.extent == 0.13 ? 90.w : 10.0.w;
      leftRightMargin = notification.extent == 0.13 ? 0.0.w : 10.w;
      topMargin = notification.extent == 0.13 ? 20.0.h : 70.h;
      playButtonTop = notification.extent == 0.13 ? 25.h : 760.h;
      playButtonLeft = notification.extent == 0.13 ? 320.w : 180.w;
      isOpen = notification.extent == 0.13 ? false : true;
    });
  }
}
