import 'package:flutter/material.dart';
import 'package:flutter_music_player/components/app_colors.dart';
import 'package:flutter_music_player/components/bold_text.dart';
import 'package:flutter_music_player/view/mini_player.dart';
import 'package:flutter_music_player/viewModel/home_page_view_model.dart';
import 'package:flutter_music_player/viewModel/selected_index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends HomePageViewModel {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getAudious,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            backgroundColor: AppColors.primaryDark,
            body: Center(
              child: CircularProgressIndicator(
                color: AppColors.colorWhite,
              ),
            ),
          );
        } else {
          return Scaffold(
            backgroundColor: AppColors.primaryDark,
            appBar: _appBar(),
            body: Container(
              margin: EdgeInsets.only(left: 16.w, right: 16.w),
              width: double.infinity,
              height: 800.h,
              decoration: _containerDecoration(),
              child: ListView.builder(
                itemCount: audiousList!.length,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _songImage(context, index),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _title(index),
                          _subtitle(index),
                        ],
                      ),
                      _favotiteIcon(),
                    ],
                  );
                },
              ),
            ),
          );
        }
      },
    );
  }

  Consumer _songImage(BuildContext context, int index) {
    return Consumer(
      builder: (context, ref, child) {
        return InkWell(
          onTap: () {
            ref.read(selectedIndexProvider.notifier).state = index;

            showMiniPlayer(context);
          },
          child: Container(
            width: 85,
            height: 85,
            margin: EdgeInsets.only(top: 10.h, left: 10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage(audiousList![index].audioImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }

  BoxDecoration _containerDecoration() {
    return BoxDecoration(
      color: AppColors.primaryGreyLight.withOpacity(0.1),
      borderRadius: BorderRadius.circular(20.w),
    );
  }

  _title(int index) {
    return Container(
      margin: EdgeInsets.only(top: 10.h, left: 10.w),
      width: 220,
      child: Text(
        audiousList![index].audioName,
        style: AppTextStyle.textBold(fontSize: 24),
      ),
    );
  }

  Container _subtitle(int index) {
    return Container(
      margin: EdgeInsets.only(top: 10.h, left: 10.w),
      child: Text(
        audiousList![index].artistName,
        style: AppTextStyle.textSameBold(
          fontSize: 16,
          color: AppColors.primaryGreyLight,
        ),
      ),
    );
  }

  SizedBox _favotiteIcon() {
    return SizedBox(
      width: 21,
      height: 19,
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.favorite, color: AppColors.primaryRed),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        "Songs",
        style: AppTextStyle.textBold(
          fontSize: 18,
          color: AppColors.colorWhite,
        ),
      ),
    );
  }
}

void showMiniPlayer(BuildContext context) {
  OverlayEntry? overLayEntry;
  overLayEntry = OverlayEntry(
    builder: (context) {
      return const MiniPlayer();
    },
  );

  Overlay.of(context).insert(overLayEntry);
}
