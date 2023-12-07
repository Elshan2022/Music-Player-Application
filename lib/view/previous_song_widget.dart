import 'package:flutter/material.dart';
import 'package:flutter_music_player/components/app_colors.dart';
import 'package:flutter_music_player/viewModel/audio_player.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PreviousSongIcon extends ConsumerWidget {
  const PreviousSongIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final heigth = MediaQuery.of(context).size.height;
    return Positioned(
      top: heigth * 0.85,
      left: 100.w,
      child: Container(
        width: 44.w,
        height: 44.w,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primaryGreyDark.withOpacity(0.2)),
        child: IconButton(
          onPressed: () {
            final player = ref.read(audioPlayerNotifierProvider.notifier);
            player.goPreviousSong();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: AppColors.primaryGreyLight,
            size: 24,
          ),
        ),
      ),
    );
  }
}
