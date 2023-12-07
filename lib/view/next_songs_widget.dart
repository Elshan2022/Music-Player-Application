import 'package:flutter/material.dart';
import 'package:flutter_music_player/components/app_colors.dart';
import 'package:flutter_music_player/components/bold_text.dart';
import 'package:flutter_music_player/model/audio_model.dart';
import 'package:flutter_music_player/view/next_songs_details_widget.dart';
import 'package:flutter_music_player/viewModel/audios_list.dart';
import 'package:flutter_music_player/viewModel/selected_index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextSongsWidget extends ConsumerWidget {
  NextSongsWidget({super.key});
  final List<AudioModel> _audious = AudioAsset.audiosAssetList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final heigth = MediaQuery.of(context).size.height;
    final selectedIndex = ref.watch(selectedIndexProvider);

    return Positioned(
      top: heigth * 0.70,
      left: 30.w,
      child: Container(
        width: 350.w,
        height: 100.h,
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.w),
          color: AppColors.primaryGreyLight.withOpacity(0.1),
        ),
        child: Column(
          children: [
            _header(),
            SizedBox(height: 5.h),
            NextSongsDetails(index:((selectedIndex + 1) % _audious.length).toInt()),
            SizedBox(height: 5.h),
            NextSongsDetails(index: ((selectedIndex + 2) % _audious.length).toInt()),
          ],
        ),
      ),
    );
  }

  Row _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Up next",
          style: AppTextStyle.textMedium(
            color: AppColors.colorWhite,
            fontSize: 14,
          ),
        ),
        Icon(
          Icons.table_rows_rounded,
          size: 23.w,
          color: AppColors.colorWhite,
        ),
      ],
    );
  }
}
