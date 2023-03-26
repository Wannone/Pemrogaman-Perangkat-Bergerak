// import 'package:flutter/material.dart';
// import 'package:state_management/detailscreen.dart';
// import 'package:state_management/model/country.dart';

// class MainScreen extends StatelessWidget {
//   const MainScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('List Negara'),
//       ),
//       body: ListView.builder(
//         itemBuilder: (context, index) {
//           final Country place = CountryList[index];
//           return InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return DetailScreen(place: place);
//                 }));
//               },
//               child: SingleChildScrollView(child: ListItem(place)));
//         },
//         itemCount: CountryList.length,
//       ),
//     );
//   }
// }

// Widget ListItem(Country place) {
//   return Card(
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Expanded(
//             flex: 1,
//             child: Image.asset(
//               place.imageasset,
//               height: 80,
//             )),
//         Expanded(
//           flex: 2,
//           child: Padding(
//             padding: const EdgeInsets.all(8),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   place.name,
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(place.location)
//               ],
//             ),
//           ),
//         )
//       ],
//     ),
//   );
// }
