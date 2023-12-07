import 'package:flutter/material.dart';
import 'package:flutter_music_player/components/app_colors.dart';
import 'package:flutter_music_player/viewModel/audio_player.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuffleIcon extends ConsumerWidget {
  const SuffleIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final heigth = MediaQuery.of(context).size.height;
    return Positioned(
      top: heigth * 0.85,
      left: 10.w,
      child: IconButton(
        onPressed: () async {
          final state = ref.read(audioPlayerNotifierProvider.notifier);
          await state.suffleSong();
        },
        icon: const Icon(
          Icons.shuffle,
          color: AppColors.primaryGreyLight,
          size: 30,
        ),
      ),
    );
  }
}
