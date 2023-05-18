import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'sign_up.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const FlutterLogo(
            //   size: 150,
            // ),
            Image.asset("assets/icon/logo.png", width: 170, height: 300),
            const SizedBox(height: 20),
            const Text(
              'share your memories',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // fungsi untuk tombol login di sini
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // fungsi untuk tombol daftar di sini
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegistrationPage()),
                );
              },
              child: const Text('Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}
