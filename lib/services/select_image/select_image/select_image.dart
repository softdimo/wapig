import 'package:wapig/imports/barrel.dart';

Future<XFile?> getImage(ImageSource source) async {
  final XFile? pickedFile = await ImagePicker().pickImage(source: source);
  return pickedFile;
}
