import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_player/components/app_colors.dart';
import 'package:flutter_music_player/components/bold_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SongDetailPage extends StatelessWidget {
  const SongDetailPage({super.key, required this.controller});
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      appBar: _appBar(),
      body: Container(
        margin: EdgeInsets.only(top: 22.h),
        child: ListView(
          controller: controller,
          children: [
            // song image
            Align(
              alignment: Alignment.center,
              child: CachedNetworkImage(
                imageUrl:
                    "https://source.boomplaymusic.com/group10/M00/06/09/670e37dfebb54768b953b408df4424c1.jpg",
                placeholder: (context, url) {
                  return const CircularProgressIndicator();
                },
                imageBuilder: (context, imageProvider) {
                  return Container(
                    width: double.infinity,
                    height: 355.h,
                    margin: EdgeInsets.only(left: 16.w, right: 16.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.w),
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover),
                    ),
                  );
                },
              ),
            ),
            //song name
            Container(
              margin: EdgeInsets.only(top: 10.h, left: 16.w, right: 16.w),
              child: Text(
                "Laughing on the outside",
                style: AppTextStyle.textBold(fontSize: 26),
              ),
            ),
            // artist name
            Container(
              margin: EdgeInsets.only(top: 10.h, left: 16.w, right: 16.w),
              child: Text(
                "Teddy Randazzo",
                style: AppTextStyle.textSameBold(
                    fontSize: 16, color: AppColors.primaryGreyLight),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.keyboard_arrow_down_sharp,
          color: AppColors.colorWhite,
          size: 24.w,
        ),
      ),
      title: Text(
        "Now playing",
        style: AppTextStyle.textBold(fontSize: 18),
      ),
    );
  }
}
