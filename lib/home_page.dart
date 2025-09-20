import 'package:dashboard/main_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final List<Widget> screens = [
    MainPage(),
    Center(child: Text("Halaman 2")),
    Center(child: Text("Halaman 3")),
    Center(child: Text("Halaman 4")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(),
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified), label: "Verified"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Score"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp), label: "Account"),
        ],
      ),
    );
  }
}
