import 'package:flutter/material.dart';
import 'package:wapig/models/consolidate_data.dart';
import 'package:wapig/presentation/screens/cuentas_screen.dart';
import 'package:wapig/presentation/widgets/title_text/title_name.dart';
import 'package:wapig/services/consolidated/consolidated_data_service.dart';
import 'package:wapig/services/consolidated/consolidated_service.dart';
import 'side_menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      //print(error);
      // Manejar la posible exception aquí
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
            preferredSize: Size.fromHeight(size.width * 0.30),
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
      drawer: const SideMenu(),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CuentasScreen()),
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
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    isClicked = !isClicked;
                  });
                },
                backgroundColor: !isClicked 
                  ? const Color.fromARGB(255, 25, 94, 113)
                  : const Color.fromARGB(255, 7, 178, 225),
                shape: const CircleBorder(),
                child: !isClicked ? const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 40,
                ) : const Icon(
                  Icons.close_outlined,
                  color: Colors.white,
                  size: 40,
                )
              )),
          Center(
            child: isClicked 
              ? const Text('Botón clickeado') 
              : Container(),
          )
        ],
      ),
    );
  }
}
