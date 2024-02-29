import 'package:wapig/imports/barrel.dart';


class ImageNotifier extends ChangeNotifier {
  XFile? _image;

  XFile? get image => _image;

  void setImage(XFile? newImage) {
    _image = newImage;
    notifyListeners();
  }
}

class ImageSingleton {
  static final ImageNotifier _notifier = ImageNotifier();

  static ImageNotifier get notifier => _notifier;
}
