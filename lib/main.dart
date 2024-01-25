import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wapig/presentation/provider/discover_provider.dart';
import 'package:wapig/presentation/screens/screen_welcome.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => DiscoverProvider(),
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: ScreenWelcome());
  }
}
