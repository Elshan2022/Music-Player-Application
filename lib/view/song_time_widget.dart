import 'package:flutter/material.dart';
import 'package:flutter_music_player/components/app_colors.dart';
import 'package:flutter_music_player/components/bold_text.dart';
import 'package:flutter_music_player/viewModel/audio_duration.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SongTime extends ConsumerStatefulWidget {
  const SongTime({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SongTimeState();
}

class _SongTimeState extends ConsumerState<SongTime> {
  @override
  void initState() {
    ref.read(audioDurationProvider.notifier).audioDuration();
    ref.read(audioDurationProvider.notifier).audioPosition();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final state = ref.watch(audioDurationProvider);

    return Positioned(
      top: height * 0.57,
      child: Container(
        margin: EdgeInsets.only(left: 12.w),
        child: Row(
          children: [
            Text(
              state.position.toString().split(".")[0],
              style: AppTextStyle.textMedium(
                fontSize: 14,
                color: AppColors.colorWhite,
              ),
            ),
            SizedBox(width: width * 0.7),
            Text(
              state.duration.toString().split(".")[0],
              style: AppTextStyle.textMedium(
                fontSize: 14,
                color: AppColors.colorWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
