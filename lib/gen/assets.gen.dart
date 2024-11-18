/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/1.png
  AssetGenImage get a1 => const AssetGenImage('assets/images/1.png');

  /// File path: assets/images/10.png
  AssetGenImage get a10 => const AssetGenImage('assets/images/10.png');

  /// File path: assets/images/11.png
  AssetGenImage get a11 => const AssetGenImage('assets/images/11.png');

  /// File path: assets/images/12.png
  AssetGenImage get a12 => const AssetGenImage('assets/images/12.png');

  /// File path: assets/images/13.png
  AssetGenImage get a13 => const AssetGenImage('assets/images/13.png');

  /// File path: assets/images/14.png
  AssetGenImage get a14 => const AssetGenImage('assets/images/14.png');

  /// File path: assets/images/15.png
  AssetGenImage get a15 => const AssetGenImage('assets/images/15.png');

  /// File path: assets/images/16.png
  AssetGenImage get a16 => const AssetGenImage('assets/images/16.png');

  /// File path: assets/images/17.png
  AssetGenImage get a17 => const AssetGenImage('assets/images/17.png');

  /// File path: assets/images/18.png
  AssetGenImage get a18 => const AssetGenImage('assets/images/18.png');

  /// File path: assets/images/19.png
  AssetGenImage get a19 => const AssetGenImage('assets/images/19.png');

  /// File path: assets/images/2.png
  AssetGenImage get a2 => const AssetGenImage('assets/images/2.png');

  /// File path: assets/images/20.png
  AssetGenImage get a20 => const AssetGenImage('assets/images/20.png');

  /// File path: assets/images/21.png
  AssetGenImage get a21 => const AssetGenImage('assets/images/21.png');

  /// File path: assets/images/22.png
  AssetGenImage get a22 => const AssetGenImage('assets/images/22.png');

  /// File path: assets/images/23.png
  AssetGenImage get a23 => const AssetGenImage('assets/images/23.png');

  /// File path: assets/images/24.png
  AssetGenImage get a24 => const AssetGenImage('assets/images/24.png');

  /// File path: assets/images/25.png
  AssetGenImage get a25 => const AssetGenImage('assets/images/25.png');

  /// File path: assets/images/26.png
  AssetGenImage get a26 => const AssetGenImage('assets/images/26.png');

  /// File path: assets/images/27.png
  AssetGenImage get a27 => const AssetGenImage('assets/images/27.png');

  /// File path: assets/images/3.png
  AssetGenImage get a3 => const AssetGenImage('assets/images/3.png');

  /// File path: assets/images/4.png
  AssetGenImage get a4 => const AssetGenImage('assets/images/4.png');

  /// File path: assets/images/5.png
  AssetGenImage get a5 => const AssetGenImage('assets/images/5.png');

  /// File path: assets/images/6.png
  AssetGenImage get a6 => const AssetGenImage('assets/images/6.png');

  /// File path: assets/images/7.png
  AssetGenImage get a7 => const AssetGenImage('assets/images/7.png');

  /// File path: assets/images/8.png
  AssetGenImage get a8 => const AssetGenImage('assets/images/8.png');

  /// File path: assets/images/9.png
  AssetGenImage get a9 => const AssetGenImage('assets/images/9.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        a1,
        a10,
        a11,
        a12,
        a13,
        a14,
        a15,
        a16,
        a17,
        a18,
        a19,
        a2,
        a20,
        a21,
        a22,
        a23,
        a24,
        a25,
        a26,
        a27,
        a3,
        a4,
        a5,
        a6,
        a7,
        a8,
        a9
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
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
