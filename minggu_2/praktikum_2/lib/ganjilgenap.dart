import 'package:flutter/material.dart';

class Ganjilgenap extends StatefulWidget {
  const Ganjilgenap({Key? key}) : super(key: key);

  @override
  State<Ganjilgenap> createState() => _GanjilgenapState();
}

class _GanjilgenapState extends State<Ganjilgenap> {
  int counter = 0;
  String text = "";
  void ganjilgenap() {
    counter++;
    if(counter > 10){
      counter = 1;
    }
    setState(() {
      if(counter % 2 == 0){
        text = "Genap";
      }else{
        text = "Ganjil";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ganjil Genap'),
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
                text,
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ganjilgenap,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
