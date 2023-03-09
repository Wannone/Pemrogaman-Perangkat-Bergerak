import 'package:flutter/material.dart';

class BilGenap extends StatefulWidget {
  const BilGenap({Key? key}) : super(key: key);

  @override
  State<BilGenap> createState() => _BilGenapState();
}

class _BilGenapState extends State<BilGenap> {
  int counter = 0;
  String textgenap = "";
  void bilgenap(){
    setState(() {
      counter++;
      textgenap = "Genap : ";
      for(int i=1; i<= counter; i++){
        if (i % 2 == 0 ){
          textgenap += '${i}, ';
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Genap'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                textgenap,
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: bilgenap,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
