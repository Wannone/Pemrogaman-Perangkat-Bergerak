import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:state_management/mainscreen.dart';
import 'package:state_management/with_provider/provider/done_country_provider.dart';
import 'package:state_management/with_provider/provider/mainscreen_provider.dart';
import 'package:state_management/with_state/mainscreen_state.dart';
import 'package:state_management/with_state/done_country_list.dart';
import 'package:provider/provider.dart';

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
                    builder: (context) => MainScreen(),
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
                    builder: (context) => Builder(builder: (context) {
                      return ChangeNotifierProvider(
                          create: (context) => DoneCountryProvider(),
                          child: MaterialApp(
                            title: 'Contacts',
                            theme: ThemeData(),
                            home: MainScreenProvider(),
                          ));
                    }),
                  ),
                );
              },
              child: Text("Percobaan 2"),
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
