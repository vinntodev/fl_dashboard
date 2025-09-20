import 'dart:async';

import 'package:dashboard/main_page.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  void getAwal() async {
    // fungsi async menampung data banyak
    Timer(Duration(seconds: 3), () {
      // script diatas membuat halaman akan tampil setelah 3 detik
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MainPage()),
          (route) => false);
    });
  }

  @override
  void initState() {
    // untuk mengrefresh selama 3 detik akan menuju main page
    getAwal();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // script diatas akan menyesuiakan di tampilan mobile
        child: Column(
          children: [
            Spacer(),
            // script diatas untuk membuat tampilan awal
            Image.asset(
              "assets/images/uinmybsk.png",
              scale: 10,
              // script diatas memberikan img menjadi kecil sesuia angka yang diinginkan
            ),
            Spacer(),
            Text("Only This"),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
