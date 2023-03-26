import 'package:flutter/material.dart';
import 'package:state_management/model/country.dart';

class DoneCountryList extends StatelessWidget {
  final List<Country> doneCountryList;
  const DoneCountryList({Key? key, required this.doneCountryList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Negara telah dikunjungi'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Country place = doneCountryList[index];
          return Card(
            color: Colors.white60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  place.name,
                  style: const TextStyle(fontSize: 16),
                ),
                const Icon(Icons.done_outline),
              ],
            ),
          );
        },
        itemCount: doneCountryList.length,
      ),
    );
  }
}
