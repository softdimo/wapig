import 'dart:typed_data';

import 'package:wapig/imports/barrel.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  XFile? image;
  ImageProvider imageDefault = const AssetImage('assets/images/perfil.png');

  @override
  void initState() {
    super.initState();
    image;
  }

  int _currentSelectedItem = 0;

  /* void _onImageSelected(XFile? newImage) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ImageSingleton>(context, listen: false).setImage(newImage);
    });
  } */
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //ImageSingleton imageSingleton = Provider.of<ImageSingleton>(context);

    final List<ListTile> items = SideMenuItems.getItems();


    return Drawer(
      child: ListView(
        children: [
            DrawerHeader(
                  padding: const EdgeInsets.only(top: 0),
                  child: Stack(children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: ImageSingleton.notifier.image != null
                                ? FileImage(File(ImageSingleton.notifier.image!.path))
                                : imageDefault,
                          ),

                          const SizedBox(height: 30),
                          const Text(
                              'Pablo Lara'), //Aqui se debe mostrar el nombre de usuario desde la BD
                        ],
                      ),
                    ),
                    Positioned(
                      right: size.width * 0.27,
                      bottom: 15,
                      child: TakePhoto(
                        onImageFile: (imagePicked) {
                          //setState(() {
                            ImageSingleton.notifier.setImage(imagePicked);
                            Navigator.of(context).pop();
                         // });
                        },
                      ),
                    ),
                  ]),
                ),
          for (int i = 0; i < items.length; i++)
            ListTile(
              leading: items[i].leading,
              title: items[i].title,
              selected: i == _currentSelectedItem,
              onTap: () {
                setState(() {
                  _currentSelectedItem = i;
                });
                SideMenuItems.handleItemSelected(context, i);
              },
            ),
        ],
      ),
    );
  }
}
