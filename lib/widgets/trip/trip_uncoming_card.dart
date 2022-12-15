import 'package:flutter/material.dart';
import 'package:traveloo_dashboard/utils/sizes.dart';

import '../../styles/styles.dart';
import '../card/app_card.dart';
import '../icon/app_icon.dart';
import '../image/app_image.dart';

class TripUpcomingCard extends StatelessWidget {
  const TripUpcomingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final extended = !isPhone(context);
    return AppCard(
      height: extended ? 230 : null,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: extended
            ? Row(
                children: [
                  _buildImage(context),
                  const SizedBox(width: 16),
                  Expanded(child: _buildInfo(context)),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildImage(context),
                  _buildInfo(context),
                ],
              ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    final colors = AppColors.of(context);
    final extended = !isPhone(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 28),
            child: extended
                ? AppImage.image1.size(height: 186, width: 240)
                : AspectRatio(aspectRatio: 1.2, child: AppImage.image1),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AppCard(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 12, 12, 4),
                child: Row(
                  children: [
                    AppIcon.location.color(colors.primary),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        'South Korea',
                        style:
                            AppTextStyles.input.w500.withColor(colors.primary),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    AppIcon.star,
                    const SizedBox(width: 4),
                    Text(
                      '4.9',
                      style: AppTextStyles.body.withColor(colors.primary),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfo(BuildContext context) {
    final colors = AppColors.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 10),
        Text(
          'Cherry blossom Seoul tour',
          style: AppTextStyles.input.w600.withColor(colors.primary),
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              AppChip(
                icon: AppIcon.calendar.color(colors.primary),
                text: '23 Mar - 28 Mar',
              ),
              const SizedBox(width: 4),
              AppChip(
                icon: AppIcon.house.color(colors.primary),
                text: 'Myeongdong',
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'It’s springtime in Korea, which means some very welcome warmer weather. It also means cherry blossom season!',
          style: AppTextStyles.body.withColor(colors.secondary),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: colors.secondary),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: colors.background,
                radius: 12,
                child: AppIcon.airplane.color(colors.primary),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    style: AppTextStyles.body.withColor(colors.primary),
                    children: [
                      const TextSpan(text: 'From '),
                      TextSpan(
                        text: 'Ha Noi (VN)',
                        style: AppTextStyles.input.withColor(colors.accent),
                      ),
                      const TextSpan(text: ' to '),
                      TextSpan(
                        text: 'Seoul (SK)',
                        style: AppTextStyles.input.withColor(colors.accent),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('View detail'),
              ),
            ),
            const SizedBox(width: 12),
            Stack(
              children: [
                CircleAvatar(
                  backgroundColor: colors.background,
                  radius: 18,
                  child: AppIcon.notification.color(colors.primary),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: AppCard(
                    height: 15,
                    width: 15,
                    borderRadius: 7.5,
                    backgroundColor: colors.white,
                    child: Icon(
                      Icons.add,
                      size: 9,
                      color: colors.accent,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class AppChip extends StatelessWidget {
  const AppChip({super.key, required this.icon, required this.text});

  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(width: 4),
          Text(
            text,
            style: AppTextStyles.input.withColor(colors.primary),
          ),
        ],
      ),
    );
  }
}
