// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../styles/styles.dart';
import '../../utils/sizes.dart';
import '../../widgets/badge/noty_badge.dart';
import '../../widgets/card/app_card.dart';
import '../../widgets/icon/app_icon.dart';
import '../../widgets/image/app_image.dart';
import '../../widgets/inputs/app_search_field.dart';
import '../../widgets/trip/trip_uncoming_card.dart';
import 'home.controller.dart';
import 'widget/home_sidebar.dart';

class HomeView extends GetWidget<HomeController> {
  static const String name = 'HomeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildDocument(context),
      drawer: !isDesktop(context) ? _buildSidebar(context) : null,
    );
  }

  Widget _buildDocument(BuildContext context) {
    if (isDesktop(context)) {
      return Row(
        children: [
          _buildSidebar(context),
          Expanded(child: _buildBody(context)),
        ],
      );
    }
    return _buildBody(context);
  }

  Widget _buildSidebar(BuildContext context) {
    return const HomeSidebar();
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1034),
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 32,
            horizontal: isPhone(context) ? 24 : 50,
          ),
          children: [
            SafeArea(child: _buildHeader(context)),
            SizedBox(height: isPhone(context) ? 24 : 48),
            Row(
              children: [
                Expanded(
                  flex: 60812294,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Upcoming trips',
                        style: AppTextStyles.headline
                            .withColor(AppColors.of(context).primary),
                      ),
                      const SizedBox(height: 16),
                      const TripUpcomingCard(),
                    ],
                  ),
                ),
                if (isBigTablet(context)) ...[
                  const SizedBox(width: 24),
                  Expanded(
                    flex: 39187706,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Calendar',
                          style: AppTextStyles.headline
                              .withColor(AppColors.of(context).primary),
                        ),
                        const SizedBox(height: 16),
                        AppCard(
                          height: 230,
                          child: Padding(
                            padding: EdgeInsets.all(16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(child: _buildWelcome(context)),
            if (isBigTablet(context)) ...[
              const SizedBox(width: 36),
              _buildSearch(context),
              const SizedBox(width: 36),
            ],
            _buildActions(context),
          ],
        ),
        if (!isBigTablet(context)) ...[
          const SizedBox(height: 24),
          _buildSearch(context),
        ]
      ],
    );
  }

  Widget _buildWelcome(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Hello Sehuyen!',
          style: AppTextStyles.headlineBold
              .withColor(AppColors.of(context).primary),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          'Welcome back and explore new trips',
          style:
              AppTextStyles.subTitle.withColor(AppColors.of(context).secondary),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _buildSearch(BuildContext context) {
    return AppSearchField(
      hintText: 'Festival Yuki Matsuri is coming...',
      onChanged: (v) {},
      controller: TextEditingController(),
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      children: [
        NotyBadge(
          hasNoty: true,
          child: AppCard(
            borderRadius: 24,
            child: IconButton(
              padding: const EdgeInsets.all(12),
              splashRadius: 24,
              iconSize: 24,
              onPressed: () {},
              icon: AppIcon.notification.color(AppColors.of(context).primary),
            ),
          ),
        ),
        const SizedBox(width: 12),
        AppCard(
          height: 48,
          width: 48,
          borderRadius: 24,
          child: AppImage.avatar,
        ),
      ],
    );
  }
}
