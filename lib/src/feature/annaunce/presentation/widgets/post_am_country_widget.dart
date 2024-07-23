// import "package:flutter/material.dart";

// class LocationSelector extends StatelessWidget {
//   LocationSelector({super.key});

//   final List<String> countries = <String>["USA", "Canada", "India"];
//   final Map<String, List<String>> cities = <String, List<String>>{
//     "USA": <String>["New York", "Los Angeles", "Chicago"],
//     "Canada": <String>["Toronto", "Vancouver", "Montreal"],
//     "India": <String>["Mumbai", "Delhi", "Bangalore"],
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           const Text(
//             "Location",
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 10),
//           Column(
//             children: <Widget>[
//               DropdownButton<String>(
//                 hint: const Text("Country"),
//                 onChanged: (String? newValue) {},
//                 items: countries.map((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
