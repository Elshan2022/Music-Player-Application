import 'package:flutter/material.dart';
import 'package:flutter_music_player/components/app_colors.dart';
import 'package:flutter_music_player/components/bold_text.dart';
import 'package:flutter_music_player/model/audio_model.dart';
import 'package:flutter_music_player/viewModel/audios_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextSongsDetails extends StatelessWidget {
  NextSongsDetails({super.key, required this.index});
  final int index;
  final List<AudioModel> _audious = AudioAsset.audiosAssetList;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 40.w),
          width: 100.w,
          child: Text(
            _audious[index].audioName,
            style: AppTextStyle.textMedium(
                fontSize: 16, color: AppColors.primaryGreyLight),
          ),
        ),
        Container(
          width: 113.w,
          margin: EdgeInsets.only(right: 40.w),
          child: Text(
            _audious[index].artistName,
            style: AppTextStyle.textMedium(
                fontSize: 16, color: AppColors.primaryGreyLight),
          ),
        ),
        SizedBox(
          child: Text(
            "2.16",
            style: AppTextStyle.textMedium(
                fontSize: 16, color: AppColors.primaryGreyLight),
          ),
        ),
      ],
    );
  }
}
