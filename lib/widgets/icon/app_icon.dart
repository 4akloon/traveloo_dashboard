import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part 'app_icon_ext.dart';
part 'app_icon_params.dart';
part 'app_icon_widget.dart';

class AppIcon {
  static AppIconWidget _core(String icon) {
    return AppIconWidget(
      params: AppIconsParams(icon: icon),
    );
  }

  static AppIconWidget get home => _core('home').size(24);
  static AppIconWidget get booking => _core('booking').size(24);
  static AppIconWidget get explore => _core('explore').size(24);
  static AppIconWidget get message => _core('message').size(24);
  static AppIconWidget get support => _core('support').size(24);
  static AppIconWidget get settings => _core('settings').size(24);
  static AppIconWidget get logout => _core('logout').size(24);
  static AppIconWidget get search => _core('search').size(24);
  static AppIconWidget get notification => _core('notification').size(24);
  static AppIconWidget get location => _core('location').size(24);
  static AppIconWidget get star => _core('star').size(24);
  static AppIconWidget get calendar => _core('calendar').size(16);
  static AppIconWidget get house => _core('house').size(16);
  static AppIconWidget get airplane => _core('airplane').size(22.6274);
}
