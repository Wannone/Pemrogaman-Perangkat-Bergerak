import 'package:flutter/material.dart';
import 'package:percobaan_1/percobaan1.dart';
import 'package:percobaan_1/percobaan2.dart';
import 'package:percobaan_1/percobaan3.dart';
import 'package:percobaan_1/percobaan4.dart';
import 'package:percobaan_1/percobaan5.dart';
import 'package:percobaan_1/latihan.dart';
import 'package:percobaan_1/tugas.dart';
import 'package:percobaan_1/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minggu 4',
      theme: ThemeData(),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minggu 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //pindah tab
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Percobaan1(),
                  ),
                );
              },
              child: Text("Percobaan 1"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //pindah tab
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Percobaan2(),
                  ),
                );
              },
              child: Text("Percobaan 2"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //pindah tab
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Percobaan3(),
                  ),
                );
              },
              child: Text("Percobaan 3"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //pindah tab
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Percobaan4(),
                  ),
                );
              },
              child: Text("Percobaan 4"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //pindah tab
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Percobaan5(),
                  ),
                );
              },
              child: Text("Percobaan 5"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //pindah tab
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const latihan(),
                  ),
                );
              },
              child: Text("latihan"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //pindah tab
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const tugas(),
                  ),
                );
              },
              child: Text("Tugas"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //pindah tab
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainScreen(),
                  ),
                );
              },
              child: Text("part 2"),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
