import 'dart:typed_data';

//import 'package:image/image.dart';
import 'package:wapig/imports/barrel.dart';
import 'package:wapig/services/select_image/select_image/select_image.dart';

class TakePhoto extends StatefulWidget {
  //final Function(Uint8List?) onImagePicked;
  //final Function(File?) onImageFile;
  final Function(XFile?) onImageFile;
  Uint8List? image;

  TakePhoto({super.key, required this.onImageFile});

  @override
  State<TakePhoto> createState() => _TakePhotoState();
}

class _TakePhotoState extends State<TakePhoto> {
  //Uint8List? _image;
  File? imageFile;
  //String? imagePath;

  /* void _pickImage(ImageSource source, BuildContext context) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      /* final imageFile2 = File(pickedFile.path);
      final appDirectory = await getApplicationDocumentsDirectory();
      //print('directorio: $appDirectory');
      final newImagePath = '${appDirectory.path}/captured_image.jpg';

      await imageFile2.copy(newImagePath); */

      setState(() {
        //widget.onImageFile(File(newImagePath));
        imageFile = File(pickedFile.path);
        widget.onImageFile(imageFile);
        Navigator.of(context).pop();
      });

      /* setState(() {
        widget.onImagePicked(resizedBytes);
        widget.onImageFIle(imageFile);
        Navigator.of(context).pop();
      }); */
    }
  } */

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.add_a_photo_rounded),
      onPressed: () => showImagePickerOption(context),
      //child: const Text('Seleccionar imagen'),
    );
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      final imagenGallery = await getImage(ImageSource.gallery);
                      widget.onImageFile(imagenGallery);
                      setState(() {
                        imageFile = File(imagenGallery!.path);
                      });
                      //_pickImage(ImageSource.gallery, context);
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(Icons.image, size: 70),
                          Text('Galería')
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      final imagenCamera = await getImage(ImageSource.camera);
                      widget.onImageFile(imagenCamera);
                      setState(() {
                        imageFile = File(imagenCamera!.path);
                      });

                      //_pickImage(ImageSource.camera, context);
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera_alt,
                            size: 70,
                          ),
                          Text('Camara')
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
