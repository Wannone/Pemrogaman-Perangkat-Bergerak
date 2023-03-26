import 'package:flutter/material.dart';
import 'package:state_management/model/country.dart';
import 'package:state_management/with_provider/provider/done_country_provider.dart';
import 'package:provider/provider.dart';

class DoneCountryProviderList extends StatelessWidget {
  const DoneCountryProviderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Country> doneCountryPlaceProviderList =
        Provider.of<DoneCountryProvider>(
      context,
      listen: false,
    ).doneCountryList;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Negara telah dikunjungi'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Country place = doneCountryPlaceProviderList[index];
          return Card(
            color: Colors.white60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: Image.asset(
                      place.imageasset,
                      height: 80,
                    )),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          place.name,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(place.location)
                      ],
                    ),
                  ),
                ),
                Icon(Icons.done_outline)
              ],
            ),
          );
        },
        itemCount: doneCountryPlaceProviderList.length,
      ),
    );
  }
}
