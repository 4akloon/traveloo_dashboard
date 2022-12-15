import 'package:flutter/material.dart';

import '../../../app/app.controller.dart';
import '../../../styles/styles.dart';
import '../../../widgets/app_switcher.dart';
import '../../../widgets/drawer/drawer_item.dart';
import '../../../widgets/icon/app_icon.dart';
import '../../../widgets/image/app_image.dart';

class HomeSidebar extends StatelessWidget {
  const HomeSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return Drawer(
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 32, 0, 32),
              child: Row(
                children: [
                  AppImage.logo,
                  const SizedBox(width: 6),
                  Text(
                    'Traveloo',
                    style: AppTextStyles.title.withColor(colors.accent),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: colors.background,
            height: 1.5,
            margin: const EdgeInsets.fromLTRB(40, 0, 24, 34),
          ),
          DrawerItem(
            selected: true,
            haveNoty: false,
            label: 'Home',
            icon: (color) => Icon(Icons.home, size: 24, color: color),
          ),
          const SizedBox(height: 12),
          DrawerItem(
            selected: false,
            haveNoty: true,
            label: 'Booking',
            icon: (color) => AppIcon.booking.color(color),
            onTap: () {},
          ),
          const SizedBox(height: 12),
          DrawerItem(
            selected: false,
            haveNoty: false,
            label: 'Explore',
            icon: (color) => AppIcon.explore.color(color),
          ),
          const SizedBox(height: 12),
          DrawerItem(
            selected: false,
            haveNoty: false,
            label: 'Message',
            icon: (color) => AppIcon.message.color(color),
          ),
          const SizedBox(height: 12),
          DrawerItem(
            selected: false,
            haveNoty: false,
            label: 'Support',
            icon: (color) => AppIcon.support.color(color),
          ),
          const SizedBox(height: 12),
          DrawerItem(
            selected: false,
            haveNoty: false,
            label: 'Settings',
            icon: (color) => AppIcon.settings.color(color),
          ),
          const Spacer(),
          DrawerItem(
            selected: false,
            haveNoty: false,
            label: 'Dark mode',
            icon: (color) => AppSwitch(
              value: AppColors.isDark(context),
              onChange: (value) => AppController.instance.changeThemeMode(
                value ? ThemeMode.dark : ThemeMode.light,
              ),
            ),
          ),
          const SizedBox(height: 12),
          DrawerItem(
            selected: false,
            haveNoty: false,
            label: 'Logout',
            icon: (color) => AppIcon.logout.color(color),
          ),
          const SafeArea(child: SizedBox(height: 12)),
        ],
      ),
    );
  }
}
