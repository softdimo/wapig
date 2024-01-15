import 'package:flutter/material.dart';
import 'package:wapig/presentation/widgets/logo_image/logo_image.dart';
import 'package:wapig/presentation/widgets/logo_softdimo/logo_softdimo.dart';
import 'package:wapig/presentation/widgets/title_text/title_name.dart';
//import 'package:provider/provider.dart';
//import 'package:wapig/presentation/provider/discover_provider.dart';

class LogosWelcome extends StatelessWidget {
  const LogosWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    //final discoverProvider = Provider.of<DiscoverProvider>(context);

    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: LogoImage(width: 0.70),
        ),
        Center(
          child: TitleName(
            welcomeText: 'wapig',
            fontSize: 56,
            paddingTop: 0,
            paddingBottom: 10,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Center(
            child: LogoSoftdimo(
              width: 0.5,
              height: 0.05,
            ),
          ),
        ),
      ],
    );
  }
}
