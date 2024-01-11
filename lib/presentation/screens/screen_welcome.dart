import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wapig/presentation/provider/discover_provider.dart';

class ScreenWelcome extends StatelessWidget {
  const ScreenWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = Provider.of<DiscoverProvider>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 242, 248),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/logoWapig.png',
              width: 300,
              height: 300,
            ),
          ),
          const Center(
            child: Text(
              'WAPIG',
              style: TextStyle(
                  fontFamily: 'Sansita',
                  fontSize: 52,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20,),

          if (discoverProvider.initialLoading)
            const Center(
              child: CircularProgressIndicator(),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Image.asset(
                'assets/images/logo_b_n.png',
                width: 120,
                height: 60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
