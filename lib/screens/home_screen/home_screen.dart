import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_project/screens/home_screen/home_screen_wm.dart';

class HomeScreen extends ElementaryWidget<HomeScreenWM> {
  const HomeScreen({
    super.key,
    WidgetModelFactory wmFactory = createHomeScreenWM,
  }) : super(wmFactory);

  @override
  Widget build(HomeScreenWM wm) {
    return const Placeholder();
  }
}
