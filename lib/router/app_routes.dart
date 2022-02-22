import 'package:fl_widgets/models/models.dart';
import 'package:fl_widgets/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{

  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    // MenuOption(route: 'home', icon: Icons.home_filled, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list_alt, name: 'List View 1', screen: const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list, name: 'List View 2', screen: const Listview2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert, name: 'Alertas - Alert', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.credit_card_outlined, name: 'Tarjetas - Cards', screen: const CardScreen()),
    MenuOption(route: 'avatar', icon: Icons.account_box_rounded, name: 'Circle Avatar', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_arrow_rounded, name: 'Animated Container', screen: const AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.input_outlined, name: 'Text Inputs', screen: const InputsScreen()),
    MenuOption(route: 'slider', icon: Icons.slow_motion_video_rounded, name: 'Slider && Checks', screen: const SliderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home':(BuildContext context) => const HomeScreen()});
    
    for (final option in menuOptions) {
        appRoutes.addAll({option.route:(BuildContext context) => option.screen});
    }

    return appRoutes;
  }


  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home'      : (BuildContext context) => const HomeScreen(),
  //       'listview1' : (BuildContext context) => const Listview1Screen(),
  //       'listview2' : (BuildContext context) => const Listview2Screen(),
  //       'alert'     : (BuildContext context) => const AlertScreen(),
  //       'card'      : (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }

}