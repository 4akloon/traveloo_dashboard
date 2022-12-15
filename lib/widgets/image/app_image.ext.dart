part of 'app_image.dart';

extension AppImage on AppImageCore {
  static AppImageCore create(String path) =>
      AppImageCore(params: AppImageParams(path));

  static AppImageCore get logo =>
      create('logo.png').size(height: 33, width: 33);
  static AppImageCore get avatar =>
      create('avatar.png').size(height: 48, width: 48);
  static AppImageCore get image1 => create('image_1.png').fit(BoxFit.cover);
}
