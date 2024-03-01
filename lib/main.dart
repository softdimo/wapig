import 'package:wapig/presentation/provider/discover_provider.dart';
import 'package:wapig/imports/barrel.dart';


void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => ImageNotifier(),
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Wapig',
        debugShowCheckedModeBanner: false,
        home: ScreenWelcome());
  }
}
