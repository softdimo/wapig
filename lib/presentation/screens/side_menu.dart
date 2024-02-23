import 'dart:typed_data';

import 'package:wapig/imports/barrel.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  Uint8List? image;

  int _currentSelectedItem = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final List<ListTile> items = SideMenuItems.getItems();

    return Drawer(
      child: ListView(
        children: [
           const DrawerHeader(
                  padding: EdgeInsets.only(top: 0),
                  child: Stack(children: [
                     Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/perfil.png'),
                          ),

                          SizedBox(height: 30),
                          Text(
                              'Pablo Lara'), //Aqui se debe mostrar el nombre de usuario desde la BD
                        ],
                      ),
                    ),
                    /* Positioned(
                      right: size.width * 0.27,
                      bottom: 15,
                      child: TakePhoto(
                        onImagePicked: (pickedImage) {
                          setState(() {
                            image = pickedImage;
                          });
                        },
                        onImagePath: (imagePath) {
                          setState(() {
                            imagePath = imagePath;
                          });
                        },
                      ),
                    ), */
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
