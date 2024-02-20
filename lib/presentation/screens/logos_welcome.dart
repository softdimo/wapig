import 'package:wapig/imports/barrel.dart';

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
