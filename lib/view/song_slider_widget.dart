import 'package:flutter/material.dart';
import 'package:flutter_music_player/components/app_colors.dart';
import 'package:flutter_music_player/viewModel/audio_duration.dart';
import 'package:flutter_music_player/viewModel/audio_player.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SongSlider extends StatefulWidget {
  const SongSlider({super.key});

  @override
  State<SongSlider> createState() => _SongSliderState();
}

class _SongSliderState extends State<SongSlider> {
  double songValue = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: height * 0.52),
      height: 30.h,
      child: Consumer(
        builder: (context, ref, child) {
          final audioDuration = ref.watch(audioDurationProvider);
          final player = ref.watch(audioPlayerInstance);
          return Slider.adaptive(
            activeColor: AppColors.primaryGreen,
            inactiveColor: AppColors.primaryGreyDark,
            max: audioDuration.duration!.inSeconds.toDouble(),
            value: audioDuration.position!.inSeconds.toDouble(),
            onChanged: (value) async {
              Duration newDuration = Duration(seconds: value.toInt());
              await player.seek(newDuration);
            },
          );
        },
      ),
    );
  }
}
