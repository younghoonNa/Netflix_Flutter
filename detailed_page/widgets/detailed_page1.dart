// import 'package:flutter/material.dart';
// import 'package:toppingukking/detailed_page/widgets/detailed_map.dart';
// import 'package:toppingukking/homecategory/widgets/options_box_widget.dart';
// import 'package:toppingukking/onboarding/theme.dart';

// // #1
// class Detailed_Page1 extends StatelessWidget {
//   Key keynum;
//   List list = [];

//   Detailed_Page1(this.keynum, this.list);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       key: keynum,
//       padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: <Widget>[
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 list[0],
//                 // Detailed_list(title),
//                 style: TextStyle(
//                   color: CustomColor.customcolor,
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 height: 7.0,
//               ),
//               Row(
//                 children: <Widget>[
//                   Icon(
//                     Icons.location_on,
//                     color: CustomColor.customcolor,
//                     size: 16.0,
//                   ),
//                   SizedBox(
//                     width: 10.0,
//                   ),
//                   Text(list[1],
//                       style: TextStyle(color: Colors.grey, fontSize: 12.0))
//                 ],
//               ),
//               SizedBox(
//                 height: 7.0,
//               ),
//               Row(
//                 children: <Widget>[
//                   Icon(
//                     Icons.map,
//                     color: CustomColor.customcolor,
//                     size: 16.0,
//                   ),
//                   SizedBox(
//                     width: 10.0,
//                   ),
//                   Text(list[2],
//                       style: TextStyle(color: Colors.grey, fontSize: 12.0))
//                 ],
//               ),
//             ],
//           ),
//           Expanded(
//             child: Container(),
//           ),
//           mapita()
//         ],
//       ),
//     );
//   }
// }

// // #2
// class Detailed_Page1_2 extends StatelessWidget {
//   Key keynum;
//   List list;
//   Detailed_Page1_2(this.keynum, this.list);

//   Widget build(BuildContext context) {
//     return Container(
//         key: keynum,
//         padding: EdgeInsets.only(left: 20.0, right: 20.0),
//         margin: EdgeInsets.symmetric(vertical: 30.0),
//         child: OptionsBox(list));
//   }
// }
