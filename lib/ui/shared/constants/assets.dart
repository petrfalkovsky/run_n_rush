// ignore_for_file: library_private_types_in_public_api

abstract class Assets {
  const Assets._();

  static _Icons get icons => const _Icons();

  static _Images get images => const _Images();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get add => '$basePath/add_icon.svg';

  String get remove => '$basePath/remove_icon.svg';

  String get arrowDown => '$basePath/arrow_down.svg';

  String get arrowUp => '$basePath/arrow_up.svg';

  String get calendar => '$basePath/calendar.svg';

  String get circle => '$basePath/circle.svg';

  String get checkboxActiveCircle => '$basePath/checkbox_active_circle.svg';

  String get checkboxCircle => '$basePath/checkbox_circle.svg';

  String get clock => '$basePath/clock.svg';

  String get closeCircle => '$basePath/close_circle.svg';

  String get closeSquare => '$basePath/close_square.svg';

  String get dot => '$basePath/dot.svg';

  String get horizontalLine => '$basePath/horizontal_line.svg';

  String get list => '$basePath/list.svg';

  String get scan => '$basePath/scan.svg';

  String get selectionBusy => '$basePath/selection_busy.svg';

  String get selectionChosen => '$basePath/selection_chosen.svg';

  String get selectionFree => '$basePath/selection_free.svg';

  String get settings => '$basePath/settings.svg';

  String get star => '$basePath/star.svg';

  String get tickSquare => '$basePath/tick_square.svg';
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get laskinoPng => '$basePath/laskino.png';

  String get welcomeScreenBg => '$basePath/welcome_screen_bg.png';

  String get splashScreen => '$basePath/splash_screen_bg.png';

  String get tennisCourtCard => '$basePath/tennis_court_bg.png';
}
