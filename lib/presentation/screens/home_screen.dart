import 'package:flutter/material.dart';
import 'package:wapig/models/consolidate_data.dart';
import 'package:wapig/presentation/screens/cuentas_screen.dart';
import 'package:wapig/presentation/widgets/floatingButton/floating_button.dart';
import 'package:wapig/presentation/widgets/row_text_floating_button/row_text_floating_button.dart';
import 'package:wapig/presentation/widgets/side_menu_item/side_menu_item.dart';
import 'package:wapig/presentation/widgets/title_text/title_name.dart';
import 'package:wapig/services/consolidated/consolidated_data_service.dart';
import 'package:wapig/services/consolidated/consolidated_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentSelectedItem = 0;
  bool isClicked = false;
  ConsolidatedData _consolidatedData = ConsolidatedData(
    ingresos: 0,
    egresos: 0,
    saldo: 0,
  );

  @override
  void initState() {
    super.initState();
    _fetchConsolidatedData();
  }

  Future<void> _fetchConsolidatedData() async {
    try {
      _consolidatedData =
          await ConsolidatedDataServiceImpl().getConsolidatedData();
      setState(() {});
    } catch (error) {
      // Manejar la posible exception aquí
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<ListTile> items = SideMenuItems.getItems();
    final size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () {
          setState(() => isClicked = false);
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Vista principal',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: const Color.fromRGBO(25, 94, 113, 1.0),
            iconTheme: const IconThemeData(
              color: Colors.white,
              size: 35,
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(size.width * 0.32),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    size.width * 0.03,
                    0,
                    size.width * 0.03,
                    size.width * 0.025,
                  ),
                  // ignore: unnecessary_null_comparison
                  child: _consolidatedData != null
                      ? ConsolidatedService(
                          data: _consolidatedData,
                        )
                      : const SizedBox(),
                )),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                const DrawerHeader(
                  //padding: EdgeInsets.only(top: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/perfil.png'),
                      ),
                      SizedBox(height: 10),
                      Text(
                          'Pablo Lara'), //Aqui se debe mostrar el nombre de usuario desde la BD
                    ],
                  ),
                ),
                for (int i = 0; i < items.length; i++)
                  ListTile(
                    leading: items[i].leading,
                    title: items[i].title,
                    selected: i == _currentSelectedItem,
                    onTap: () {
                      setState(() {
                        isClicked = false;
                        _currentSelectedItem = i;
                      });
                      SideMenuItems.handleItemSelected(context, i);
                    },
                  ),
              ],
            ),
          ),
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: size.height * 0.01),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromARGB(204, 173, 173, 178))),
                    height: size.height * 0.2,
                    width: size.width * 0.9,
                    child: Column(
                      children: [
                        TitleName(
                            welcomeText: 'Cuentas',
                            fontSize: 25,
                            paddingTop: 0,
                            paddingBottom: 10,
                            onPressed: () {
                              setState(() {
                                isClicked = false;
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CuentasScreen()),
                              );
                            }),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 50,
                  right: 20,
                  child: FloatingButtonWidget(
                    onPressed: () {
                      setState(() {
                        isClicked = !isClicked;
                      });
                    },
                    colorButtom: !isClicked
                        ? const Color.fromARGB(255, 25, 94, 113)
                        : const Color.fromARGB(255, 7, 178, 225),
                    icon: !isClicked ? Icons.add : Icons.close_outlined,
                    colorIcon: Colors.white,
                    size: 40,
                  )),
              Visibility(
                visible: isClicked,
                child: Positioned(
                    bottom: 130,
                    right: 50,
                    child: FloatingButtonWithText(
                      colorButtom: const Color.fromARGB(240, 247, 9, 9),
                      icon: Icons.remove,
                      colorIcon: Colors.white,
                      sizeIcon: 40,
                      text: 'Gasto',
                      onPressed: () {},
                    )),
              ),
              Visibility(
                visible: isClicked,
                child: Positioned(
                    bottom: 200,
                    right: 50,
                    child: FloatingButtonWithText(
                      colorButtom: const Color.fromARGB(239, 17, 230, 28),
                      icon: Icons.add,
                      colorIcon: Colors.white,
                      sizeIcon: 40,
                      text: 'Ingreso',
                      onPressed: () {},
                    )),
              ),
              Visibility(
                visible: isClicked,
                child: Positioned(
                    bottom: 270,
                    right: 50,
                    child: FloatingButtonWithText(
                      colorButtom: const Color.fromARGB(255, 50, 97, 151),
                      icon: Icons.repeat,
                      colorIcon: Colors.white,
                      sizeIcon: 40,
                      text: 'Transferencia',
                      onPressed: () {},
                    )),
              )
            ],
          ),
        ));
  }
}
