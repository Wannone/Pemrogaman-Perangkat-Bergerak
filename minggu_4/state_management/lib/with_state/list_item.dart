import 'package:flutter/material.dart';
import 'package:state_management/model/country.dart';

class ListItem extends StatelessWidget {
  final Country place;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;
  const ListItem(
      {required this.place,
      required this.isDone,
      required this.onCheckboxClick});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone ? Colors.white60 : Colors.white,
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
          Checkbox(
            value: isDone,
            onChanged: onCheckboxClick,
            checkColor: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
