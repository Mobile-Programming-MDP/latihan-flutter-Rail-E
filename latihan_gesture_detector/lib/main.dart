import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String actionLabel = 'Belum ada aksi';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interaction"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  actionLabel = 'Pengguna melakukan Tap';
                });
              },
              onDoubleTap: () {
                setState(() {
                  actionLabel = 'Pengguna melakukan Tap';
                });
              },
              onLongPress: () {
                setState(() {
                  actionLabel = 'Pengguna melakukan Hold';
                });
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25),                                
                ),
                child: Center(
                  child: const Text(
                    'Aksi',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              actionLabel
            ),
          ],
        ),
      ),
    );
  }
}

