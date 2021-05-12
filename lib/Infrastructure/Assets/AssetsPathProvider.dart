import 'package:schema/Ui/Interfaces/AssetsPathProviderInterface.dart';

class AssetsPathProvider implements AssetsPathProviderInterface {
  static const ASSETS_PATH = 'assets/';
  static const IMAGES_PATH = '${ASSETS_PATH}images/';

  @override
  String getImage(String name) => IMAGES_PATH + name;

  @override
  String getBackground(String name) => '${IMAGES_PATH}background/$name';
}
