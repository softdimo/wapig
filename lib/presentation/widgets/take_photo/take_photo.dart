import 'dart:typed_data';

//import 'package:image/image.dart';
import 'package:wapig/imports/barrel.dart';
import 'package:wapig/services/select_image/select_image/select_image.dart';

class TakePhoto extends StatefulWidget {
  final Function(XFile?) onImageFile;
  Uint8List? image;

  TakePhoto({super.key, required this.onImageFile});

  @override
  State<TakePhoto> createState() => _TakePhotoState();
}

class _TakePhotoState extends State<TakePhoto> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.add_a_photo_rounded),
      onPressed: () => showImagePickerOption(context),
      //child: const Text('Seleccionar imagen'),
    );
  }

  void showImagePickerOption(BuildContext context) {
    final size = MediaQuery.of(context).size;
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 6,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.01,
                    bottom: size.height * 0.01,
                  ),
                  child: const Text(
                    'Selecciona una imagen',
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () async {
                          final imagenGallery =
                              await getImage(ImageSource.gallery);
                          widget.onImageFile(imagenGallery);
                          setState(() {
                            imageFile = File(imagenGallery!.path);
                          });
                          //_pickImage(ImageSource.gallery, context);
                        },
                        child: const SizedBox(
                          child: Column(
                            children: [
                              Icon(
                                Icons.image,
                                size: 70,
                                color: Color.fromARGB(255, 38, 176, 155),
                              ),
                              Text(
                                'Galería',
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () async {
                          final imagenCamera =
                              await getImage(ImageSource.camera);
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
                                Icons.photo_camera_rounded,
                                size: 70,
                                color: Color.fromARGB(255, 24, 70, 168),
                              ),
                              Text(
                                'Camara',
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        });
  }
}
