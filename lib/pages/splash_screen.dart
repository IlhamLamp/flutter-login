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
            FlutterLogo(
              size: 150,
            ),
            const SizedBox(height: 20),
            Text(
              'share your memories',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
                // Tambahkan fungsi untuk tombol login di sini
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegistrationPage()),
                );
                const RegistrationPage();
                // Tambahkan fungsi untuk tombol daftar di sini
              },
              child: const Text('Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}
