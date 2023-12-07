import 'package:flutter/material.dart';
import 'package:flutter_music_player/components/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LyricFavoriteWidget extends StatelessWidget {
  const LyricFavoriteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height * 0.62,
      child: Container(
        margin: EdgeInsets.only(left: 12.w, right: 12.w),
        child: Row(
          children: [
            Container(
              width: 50.w,
              height: 50.w,
              decoration: _containerDecoration(),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.lyrics,
                  color: AppColors.primaryGreyDark,
                ),
              ),
            ),
            SizedBox(width: width * 0.7),
            Container(
              width: 50.w,
              height: 50.w,
              decoration: _containerDecoration(),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: AppColors.primaryRed,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration _containerDecoration() {
    return BoxDecoration(
      shape: BoxShape.circle,
      color: AppColors.primaryGreyLight.withOpacity(0.1),
    );
  }
}
