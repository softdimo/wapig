import 'package:flutter/material.dart';
import 'package:wapig/presentation/widgets/title_text/title_name.dart';

class ConsolidatedService extends StatelessWidget {
  const ConsolidatedService({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    /********
     * Esta clase se va a encargar de recuperar la información de cada uno de los modelos 
     * para posteriormente enviarselo a la vista del home. 
     * por el momento se representan los valores de forma estatica. 
     * Cada uno de los valores deben venir de un controlador o servicio independiente.
     */
    return Container(
      padding:
          EdgeInsets.only(top: size.height * 0.01, bottom: size.height * 0.01),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border:
                  Border.all(color: const Color.fromARGB(204, 173, 173, 178))),
          height: size.height * 0.12,
          width: size.width * 0.95,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleName(
                  welcomeText: 'Consolidado',
                  fontSize: 18,
                  paddingTop: 0,
                  paddingBottom: 0,
                  typeText: FontWeight.normal,
                  isSansita: false,
                  onPressed: () {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: size.width * 0.1),
                    child: TitleName(
                        welcomeText: 'Ingresos:',
                        fontSize: 18,
                        paddingTop: 0,
                        paddingBottom: 0,
                        typeText: FontWeight.normal,
                        isSansita: false,
                        onPressed: () {}),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: size.width * 0.1),
                    child: TitleName(
                        welcomeText: '3.500.000',
                        colorText: const Color.fromRGBO(20, 176, 27, 1),
                        fontSize: 18,
                        paddingTop: 0,
                        paddingBottom: 0,
                        typeText: FontWeight.normal,
                        isSansita: false,
                        onPressed: () {}),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: size.width * 0.1),
                    child: TitleName(
                        welcomeText: 'Egresos:',
                        fontSize: 18,
                        paddingTop: 0,
                        paddingBottom: 0,
                        typeText: FontWeight.normal,
                        isSansita: false,
                        onPressed: () {}),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: size.width * 0.1),
                    child: TitleName(
                        welcomeText: '500.000',
                        colorText: const Color.fromRGBO(242, 8, 8, 1),
                        fontSize: 18,
                        paddingTop: 0,
                        paddingBottom: 0,
                        typeText: FontWeight.normal,
                        isSansita: false,
                        onPressed: () {}),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: size.width * 0.1),
                    child: TitleName(
                        welcomeText: 'Saldo:',
                        fontSize: 18,
                        paddingTop: 0,
                        paddingBottom: 0,
                        typeText: FontWeight.normal,
                        isSansita: false,
                        onPressed: () {}),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: size.width * 0.1),
                    child: TitleName(
                        welcomeText: '3.000.000',
                        colorText: const Color.fromRGBO(51, 97, 151, 1),
                        fontSize: 18,
                        paddingTop: 0,
                        paddingBottom: 0,
                        typeText: FontWeight.normal,
                        isSansita: false,
                        onPressed: () {}),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
