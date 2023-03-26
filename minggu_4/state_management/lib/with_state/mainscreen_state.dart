import 'package:flutter/material.dart';
import 'package:state_management/detailscreen.dart';
import 'package:state_management/model/country.dart';
import 'package:state_management/with_state/country_list.dart';
import 'package:state_management/with_state/done_country_list.dart';
import 'package:state_management/with_state/list_item.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Country> doneCountryList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Negara'),
        actions: [
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DoneCountryList(doneCountryList: doneCountryList);
                }),
              );
            },
          ),
        ],
      ),
      body: CountryPlaceList(doneCountryList: doneCountryList),
    );
  }
}
