import 'package:flutter/material.dart';

class ScreenWelcome extends StatelessWidget {
  const ScreenWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            //const SizedBox(height: 20,),
              Center(
                child: Image.asset(
                  'assets/images/logo_b_n.png',
                  width: 120,
                  height: 60,
                ),
              ),
            
          ],
        ),
      );
  }
}