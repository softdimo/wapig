import 'dart:typed_data';

//import 'package:image/image.dart';
import 'package:wapig/imports/barrel.dart';

class TakePhoto extends StatefulWidget {
  //final Function(Uint8List?) onImagePicked;
  final Function(File?) onImageFile;
  Uint8List? image;
  

  TakePhoto({super.key, required this.onImageFile});

  @override
  State<TakePhoto> createState() => _TakePhotoState();
}

class _TakePhotoState extends State<TakePhoto> {
  //Uint8List? _image;
  File? imageFile;
  //String? imagePath;

  void _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        widget.onImageFile(imageFile);
      });
      Navigator.of(context).pop();


      /* setState(() {
        widget.onImagePicked(resizedBytes);
        widget.onImageFIle(imageFile);
        Navigator.of(context).pop();
      }); */
    }
  }

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
                    onTap: () {
                      _pickImage(ImageSource.gallery);
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
                    onTap: () {
                      _pickImage(ImageSource.camera);
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

  /* Future<void> _pickImageFromGallery() async {
    try {
      final returnImage = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (returnImage == null) return;

      // Decode and resize image (optional)
      final imageBytes = await decodeImage(await returnImage.readAsBytes());
      Uint8List? resizedBytes;
      if (imageBytes != null) {
        //final resizedImage = copyResize(imageBytes, width: 200, height: 200);
        resizedBytes = Uint8List.fromList(imageBytes.getBytes());
      }

      // Get a suitable path to save the image
      final appDir = await getApplicationDocumentsDirectory();
      final filename = '${DateTime.now().millisecondsSinceEpoch}.jpg';
      imagePath = '${appDir.path}/$filename';

      // Save the image to the path
      final imageFile = File(imagePath!);
      await imageFile.writeAsBytes(resizedBytes ?? await returnImage.readAsBytes());

      setState(() {
        widget.onImagePicked(resizedBytes);
        widget.onImagePath(imagePath);
        Navigator.of(context).pop();
      });
    } catch (e) {
      print('Error al seleccionar la imagen: $e');
    }
  } */

  /* Future<void> _pickImageFromGallery() async {
    try {
      final returnImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (returnImage == null) return;
      widget.imageFile = File(returnImage.path);
      final imageBytes = await decodeImage(await returnImage.readAsBytes());
      final resizedImage = copyResize(imageBytes, width: 200, height: 200);
      final resizedBytes = Uint8List.fromList(resizedImage.getBytes());
      
      //final imageBytes = await returnImage.readAsBytes();
      setState(() {
        widget.onImagePicked(widget.image);
        Navigator.of(context).pop();
        /* imageFile = File(returnImage.path);
      widget.onImagePicked(File(returnImage.path).readAsBytesSync());
      Navigator.of(context).pop(); */
      });
    } catch (e) {
      print('Error al seleccionar la imagen: $e');
    }
  } */

  //TODO falta terminar la lógica de la instancia a la clase con el atributo  widget.image
}
