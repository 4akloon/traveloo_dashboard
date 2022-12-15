part of 'app_icon.dart';

class AppIconWidget extends StatelessWidget {
  final AppIconsParams params;
  const AppIconWidget({
    Key? key,
    required this.params,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/${params.icon}.svg',
      width: params.width ?? params.size,
      height: params.height ?? params.size,
      color: params.color,
    );
  }
}
