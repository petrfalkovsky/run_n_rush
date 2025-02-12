import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  static const _basePathIcons = 'assets/icons';
  static const _basePathImg = 'assets/images';
  static const AssetImage background =
      AssetImage('$_basePathImg/splash_screen_bg.png');
  static const AssetImage appBarBackground =
      AssetImage('$_basePathImg/appbar_frame.png');

  /// использовать свг иконки
  /// AppIcons.svgWidget(AppIcons.map, width: 26),
  static const add = '$_basePathIcons/add_icon.svg';
  static const remove = '$_basePathIcons/remove_icon.svg';
  static const arrowDown = '$_basePathIcons/arrow_down.svg';
  static const calendar = '$_basePathIcons/calendar.svg';
  static const circle = '$_basePathIcons/circle.svg';
  static const checkboxActiveCircle =
      '$_basePathIcons/checkbox_active_circle.svg';
  static const checkboxCircle = '$_basePathIcons/checkbox_circle.svg';
  static const clock = '$_basePathIcons/clock.svg';
  static const closeCircle = '$_basePathIcons/close_circle.svg';
  static const closeSquare = '$_basePathIcons/close_square.svg';
  static const dot = '$_basePathIcons/dot.svg';
  static const horizontalLine = '$_basePathIcons/horizontal_line.svg';
  static const list = '$_basePathIcons/list.svg';
  static const scan = '$_basePathIcons/scan.svg';
  static const selectionBusy = '$_basePathIcons/selection_busy.svg';
  static const selectionChosen = '$_basePathIcons/selection_chosen.svg';
  static const selectionFree = '$_basePathIcons/selection_free.svg';
  static const settings = '$_basePathIcons/settings.svg';
  static const star = '$_basePathIcons/star.svg';
  static const tickSquare = '$_basePathIcons/tick_square.svg';
  static const cart = '$_basePathIcons/cart.svg';
  static const run = '$_basePathIcons/run.svg';
  static const podium = '$_basePathIcons/podium.svg';
  static const sneaker = '$_basePathIcons/sneaker.svg';
  static const lightning = '$_basePathIcons/lightning.svg';
  static const arrowForward = '$_basePathIcons/arrow_forward.svg';
  static const map = '$_basePathIcons/map.svg';
  static const ellipse = '$_basePathIcons/ellipse.svg';

  /// использовать пнг изображения
  /// Image.asset(AppIcons.monoJogger),
  static const logo = '$_basePathImg/logo.png';
  static const jogger_2 = '$_basePathImg/jogger_2.png';
  static const joggerColored = '$_basePathImg/jogger_colored.png';
  static const coin = '$_basePathImg/blue_coin.png';
  static const welcomeScreenBg = '$_basePathImg/welcome_screen_bg.png';
  static const splashScreen = '$_basePathImg/splash_screen_bg.png';
  static const tennisCourtCard = '$_basePathImg/tennis_court_bg.png';
  static const disabledJogger = '$_basePathImg/mono_jogger.png';
  static const avatar = '$_basePathImg/avatar.png';
  static const pair = '$_basePathImg/sneakers_pair.png';
  static const outIcon = '$_basePathImg/out.png';
  static const inIcon = '$_basePathImg/in.png';
  static const logoFrame = '$_basePathImg/logo_frame.png';
  static const speedwatch = '$_basePathImg/speedwatch.png';
  static const steps = '$_basePathImg/steps_icon.png';
  static const coinLarge = '$_basePathImg/coin_rm.png';
  static const speedArrow = '$_basePathImg/speed_arrow.png';
  static const connectionLost = '$_basePathImg/connection_lost.png';

  static Widget svgWidget(String path,
      {double? width, double? height, Color? color}) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      color: color,
    );
  }
}
