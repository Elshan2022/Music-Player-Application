/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAudiousGen {
  const $AssetsAudiousGen();

  /// File path: assets/audious/all_my_life.mp3
  String get allMyLife => 'assets/audious/all_my_life.mp3';

  /// File path: assets/audious/another_love.mp3
  String get anotherLove => 'assets/audious/another_love.mp3';

  /// File path: assets/audious/beggin.mp3
  String get beggin => 'assets/audious/beggin.mp3';

  /// File path: assets/audious/here_we_go.mp3
  String get hereWeGo => 'assets/audious/here_we_go.mp3';

  /// File path: assets/audious/lose_control.mp3
  String get loseControl => 'assets/audious/lose_control.mp3';

  /// File path: assets/audious/loughing_out_side.mp3
  String get loughingOutSide => 'assets/audious/loughing_out_side.mp3';

  /// File path: assets/audious/mockingbird.mp3
  String get mockingbird => 'assets/audious/mockingbird.mp3';

  /// File path: assets/audious/somebody_you_loved.mp3
  String get somebodyYouLoved => 'assets/audious/somebody_you_loved.mp3';

  /// List of all assets
  List<String> get values => [
        allMyLife,
        anotherLove,
        beggin,
        hereWeGo,
        loseControl,
        loughingOutSide,
        mockingbird,
        somebodyYouLoved
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/all_my_life.png
  AssetGenImage get allMyLife =>
      const AssetGenImage('assets/images/all_my_life.png');

  /// File path: assets/images/another_love.jpg
  AssetGenImage get anotherLove =>
      const AssetGenImage('assets/images/another_love.jpg');

  /// File path: assets/images/beggin.jpeg
  AssetGenImage get beggin => const AssetGenImage('assets/images/beggin.jpeg');

  /// File path: assets/images/here_we_go.jpg
  AssetGenImage get hereWeGo =>
      const AssetGenImage('assets/images/here_we_go.jpg');

  /// File path: assets/images/laughing_out_side.jpg
  AssetGenImage get laughingOutSide =>
      const AssetGenImage('assets/images/laughing_out_side.jpg');

  /// File path: assets/images/lose_control.png
  AssetGenImage get loseControl =>
      const AssetGenImage('assets/images/lose_control.png');

  /// File path: assets/images/mockinbird.jpeg
  AssetGenImage get mockinbird =>
      const AssetGenImage('assets/images/mockinbird.jpeg');

  /// File path: assets/images/some_body_you_loved.jpeg
  AssetGenImage get someBodyYouLoved =>
      const AssetGenImage('assets/images/some_body_you_loved.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [
        allMyLife,
        anotherLove,
        beggin,
        hereWeGo,
        laughingOutSide,
        loseControl,
        mockinbird,
        someBodyYouLoved
      ];
}

class Assets {
  Assets._();

  static const $AssetsAudiousGen audious = $AssetsAudiousGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
