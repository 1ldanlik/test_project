import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_project/screens/home_screen/home_screen_model.dart';

import 'home_screen.dart';

class HomeScreenWM extends WidgetModel<HomeScreen, HomeScreenModel> {
  HomeScreenWM(super.model);

}

HomeScreenWM createHomeScreenWM(BuildContext context) {
  return HomeScreenWM(HomeScreenModel());
}
