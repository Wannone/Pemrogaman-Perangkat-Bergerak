import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:state_management/with_provider/provider/country_list_provider.dart';
import 'package:state_management/with_provider/provider/done_country_list_provider.dart';
import 'package:state_management/with_state/country_list.dart';
import 'package:state_management/with_state/done_country_list.dart';
import 'package:provider/provider.dart';
import 'package:state_management/with_provider/provider/done_country_provider.dart';

class MainScreenProvider extends StatefulWidget {
  const MainScreenProvider({super.key});

  @override
  State<MainScreenProvider> createState() => _MainScreenProviderState();
}

class _MainScreenProviderState extends State<MainScreenProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Negara'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DoneCountryProviderList();
              }));
            },
          )
        ],
      ),
      body: CountryPlaceListProvider(),
    );
  }
}
