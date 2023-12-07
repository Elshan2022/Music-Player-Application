import 'package:flutter/material.dart';
import 'package:flutter_music_player/components/app_colors.dart';
import 'package:flutter_music_player/viewModel/repeat_song_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RepeatSongIcon extends ConsumerStatefulWidget {
  const RepeatSongIcon({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RepeatSongIconState();
}

class _RepeatSongIconState extends ConsumerState<RepeatSongIcon> {
  @override
  Widget build(BuildContext context) {
    final heigth = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final repeat = ref.watch(repeatSongProvider);

    return Positioned(
      top: heigth * 0.85,
      left: width * 0.88,
      child: IconButton(
        onPressed: () async {
          final state = ref.read(repeatSongProvider.notifier);
          await state.repeatSong();
        },
        icon: Icon(
          Icons.repeat_sharp,
          color: repeat.isRepeat
              ? AppColors.primaryGreen
              : AppColors.primaryGreyLight,
          size: 30.w,
        ),
      ),
    );
  }
}
