import 'package:flutter/material.dart';
import 'package:flutter_music_player/components/app_colors.dart';
import 'package:flutter_music_player/components/bold_text.dart';
import 'package:flutter_music_player/model/audio_model.dart';
import 'package:flutter_music_player/view/lyric_favorite_widget.dart';
import 'package:flutter_music_player/view/next_song_icon_widget.dart';
import 'package:flutter_music_player/view/next_songs_widget.dart';
import 'package:flutter_music_player/view/previous_song_widget.dart';
import 'package:flutter_music_player/view/repeat_icon_widget.dart';
import 'package:flutter_music_player/view/song_slider_widget.dart';
import 'package:flutter_music_player/view/song_time_widget.dart';
import 'package:flutter_music_player/view/suffle_icon_widget.dart';
import 'package:flutter_music_player/viewModel/audio_player.dart';
import 'package:flutter_music_player/viewModel/mini_player_view_model.dart';
import 'package:flutter_music_player/viewModel/selected_index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({super.key});

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends MiniPlayerViewModel {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (notification) {
        calculatePosition(notification);
        return true;
      },
      child: DraggableScrollableSheet(
        minChildSize: 0.13,
        maxChildSize: 1,
        initialChildSize: 0.13,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Container(
              height: 900.h,
              width: double.infinity,
              decoration: _containerDocartion(),
              child: Scaffold(
                backgroundColor: AppColors.primaryDark,
                body: Stack(
                  children: [
                    if (isOpen) _nowPlayingTitle(),
                    _songImage(audioAsset),
                    _songName(audioAsset),
                    _artistName(audioAsset),
                    _playPauseButton(audioAsset),
                    const SongSlider(),
                    const SongTime(),
                    const LyricFavoriteWidget(),
                    NextSongsWidget(),
                    const SuffleIcon(),
                    const PreviousSongIcon(),
                    const NextSongIcon(),
                    const RepeatSongIcon(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /*
  Container(
                    height: 900.h,
                    width: constraints.maxWidth,
                    decoration: _containerDocartion(),
                    child: Stack(
                      children: [
                        if (isOpen) _nowPlayingTitle(),
                        _songImage(audioAsset),
                        _songName(audioAsset),
                        _artistName(audioAsset),
                        _playPauseButton(audioAsset),
                        const SongSlider(),
                        const SongTime(),
                        const LyricFavoriteWidget(),
                        NextSongsWidget(),
                        const SuffleIcon(),
                        const PreviousSongIcon(),
                        const NextSongIcon(),
                        const RepeatSongIcon(),
                      ],
                    ),
                  )
  
  
  */

  Consumer _playPauseButton(List<AudioModel> audio) {
    return Consumer(
      builder: (context, ref, child) {
        final index = ref.watch(selectedIndexProvider);
        final playerState = ref.watch(audioPlayerNotifierProvider);
        return AnimatedPositioned(
          left: playButtonLeft,
          top: playButtonTop,
          duration: animationDuration,
          child: CircleAvatar(
            radius: 25.w,
            backgroundColor: AppColors.colorWhite,
            child: IconButton(
              onPressed: () async {
                final state = ref.read(audioPlayerNotifierProvider.notifier);
                final audioPath = audio[index].audioPath;
                await state.playAudio(audioPath);
              },
              icon: playerState.isPlaying ? playPauseIcon[1] : playPauseIcon[0],
            ),
          ),
        );
      },
    );
  }

  BoxDecoration _containerDocartion() {
    return BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25.w),
        topRight: Radius.circular(25.w),
      ),
    );
  }

  Consumer _artistName(List<AudioModel> audio) {
    return Consumer(
      builder: (context, ref, child) {
        final index = ref.watch(selectedIndexProvider);
        return AnimatedPositioned(
          duration: animationDuration,
          left: leftPositionArtisName,
          top: topPositionArtisName,
          child: Container(
            margin: EdgeInsets.only(top: 10.h),
            child: Text(
              audio[index].artistName,
              style: AppTextStyle.textSameBold(
                fontSize: 16,
                color: AppColors.primaryGreyLight,
              ),
            ),
          ),
        );
      },
    );
  }

  Consumer _songName(List<AudioModel> audio) {
    return Consumer(
      builder: (context, ref, child) {
        final index = ref.watch(selectedIndexProvider);
        return AnimatedPositioned(
          width: 220.h,
          duration: animationDuration,
          top: topPositionSongName,
          left: leftPositionSongName,
          child: Text(
            audio[index].audioName,
            style: AppTextStyle.textBold(fontSize: 24),
          ),
        );
      },
    );
  }

  Consumer _songImage(List<AudioModel> audio) {
    return Consumer(
      builder: (context, ref, child) {
        final index = ref.watch(selectedIndexProvider);
        return AnimatedContainer(
          duration: animationDuration,
          height: imageHeigth,
          width: imageWidth,
          margin: EdgeInsets.only(
            top: topMargin,
            left: leftRightMargin,
            right: leftRightMargin,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.w),
            image: DecorationImage(
              image: AssetImage(audio[index].audioImage),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }

  Align _nowPlayingTitle() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 40.h),
        child: Text(
          "Now playing",
          style: AppTextStyle.textBold(fontSize: 18),
        ),
      ),
    );
  }
}
