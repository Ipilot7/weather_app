abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();
  static _Lottie get lottie => const _Lottie();

  // ignore: library_private_types_in_public_api
  // static _ChannelsList get channelList =>> _ChannelsList();

  // ignore: library_private_types_in_public_api
  // static _Videos get videos => const _Videos();

// ignore: library_private_types_in_public_api
  static _Audios get audios => const _Audios();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get bookIcon => '$basePath/book_icon.svg';
  String get locationMapActiveIcon => '$basePath/location_map_active_icon.svg';
  String get locationMapIcon => '$basePath/location_map_icon.svg';
  String get menuIcon => '$basePath/menu_icon.svg';

  String get searchIcon => '$basePath/search_icon.svg';
  String get moreHoriz => '$basePath/more_horiz_icon.svg';

  String get moonCloudFastWind => '$basePath/moon_cloud_fast_wind.png';
  String get moonCloudMidRaining => '$basePath/moon_cloud_mid_raining.png';
  String get sunCloudAngledRaining => '$basePath/sun_cloud_angled_raining.png';
  String get sunCloudMidRaining => '$basePath/sun_cloud_mid_raining.png';
  String get tornadoPng => '$basePath/tornado_3x.png';
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get backgroundImage => '$basePath/back_img.png';
  String get houseImage => '$basePath/house_image.png';
}

class _Lottie extends _AssetsHolder {
  const _Lottie() : super('assets/lottie');
  // String get succes => "$basePath/succes.json";
}

class _Audios extends _AssetsHolder {
  const _Audios() : super('audio');

  // String get one => "audio/1.mp3";
}
