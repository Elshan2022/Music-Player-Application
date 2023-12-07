import 'package:flutter/material.dart';
import 'package:flutter_music_player/components/app_colors.dart';

class FavoriteSongsPage extends StatelessWidget {
  const FavoriteSongsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryDark,
      body: Center(
        child: Text(
          "Favorite Songs Page",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
