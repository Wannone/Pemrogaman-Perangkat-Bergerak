import 'package:flutter/material.dart';

class BilGanjil extends StatefulWidget {
  const BilGanjil({Key? key}) : super(key: key);

  @override
  State<BilGanjil> createState() => _BilGanjilState();
}

class _BilGanjilState extends State<BilGanjil> {
  int counter = 0;
  String textganjil = "";
  void bilganjil(){
    setState(() {
      counter++;
      textganjil = "Ganjil : ";
      for(int i=1; i<= counter; i++){
        if (i % 2 != 0){
          textganjil += '${i}, ';
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ganjil'),
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
                textganjil,
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: bilganjil,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
