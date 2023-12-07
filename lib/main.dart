import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_music_player/theme/app_theme.dart';
import 'package:flutter_music_player/view/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent),
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, child) {
        return MaterialApp(
          theme: AppTheme.appTheme,
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        );
      },
    );
  }
}
