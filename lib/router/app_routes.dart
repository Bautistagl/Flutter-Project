import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: "listview1",
        icon: Icons.list_alt,
        name: "Listview tipo 1",
        screen: const Listview1Screen()),
    MenuOption(
        route: "listview2",
        icon: Icons.list_rounded,
        name: "Listview tipo 2",
        screen: const Listview2Screen()),
    MenuOption(
        route: "alert",
        icon: Icons.label_important_outline,
        name: "Alertas - Alert",
        screen: const AlertScreen()),
    MenuOption(
        route: "card",
        icon: Icons.credit_card,
        name: "Tarjetas - Cards",
        screen: const CardScreen()),
    MenuOption(
        route: "avatar",
        icon: Icons.supervised_user_circle_outlined,
        name: "Circle Avatar",
        screen: const AvatarScreen()),
    MenuOption(
        route: "Animated Container",
        icon: Icons.play_circle_fill_outlined,
        name: "Animated container",
        screen: const AnimatedScreen()),
    MenuOption(
        route: "inputs",
        icon: Icons.input_outlined,
        name: "Inputs",
        screen: const InputScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({"home": (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   "home": (BuildContext context) => const HomeScreen(),
  //   "listview1": (BuildContext context) => const Listview1Screen(),
  //   "listview2": (BuildContext context) => const Listview2Screen(),
  //   "card": (BuildContext context) => const CardScreen(),
  //   "alert": (BuildContext context) => const AlertScreen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: ((context) => const AlertScreen()));
  }
}
