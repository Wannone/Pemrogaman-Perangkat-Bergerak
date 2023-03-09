import 'package:flutter/material.dart';

class BilPrima extends StatefulWidget {
  const BilPrima({Key? key}) : super(key: key);

  @override
  State<BilPrima> createState() => _BilPrimaState();
}

class _BilPrimaState extends State<BilPrima> {
  int counter = 0;
  String textprima = "";
  void bilprima(){
    setState(() {
      counter++;
      textprima = "Prima : ";
      int bil;
      for(int i=1; i<=counter; i++){
        bil = 0;
        for(int j=1; j<=i; j++) {
          if(i%j == 0){
            bil += 1;
          }
        }
        if(bil == 2){
          textprima += '${i}, ';
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Prima'),
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
                textprima,
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: bilprima,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
