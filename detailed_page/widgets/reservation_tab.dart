// import 'package:flutter/material.dart';
// import 'package:toppingukking/onboarding/theme.dart';

// class Reservation_tab extends StatelessWidget {
//   String price;
//   Reservation_tab(this.price);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height / 9,
//       padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
//       margin: EdgeInsets.all(0),
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.vertical(
//             top: Radius.circular(25.0), bottom: Radius.circular(25.0)),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text('금액'),
//               Text(price,
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0))
//             ],
//           ),
//           SizedBox(width: 30),
//           RaisedButton(
//             padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//             elevation: 10.0,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0)),
//             color: CustomColor.customcolor,
//             textColor: Colors.white,
//             child: Text(
//               '연락하기',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
//             ),
//             onPressed: () {},
//           ),
//           RaisedButton(
//             padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//             elevation: 10.0,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0)),
//             color: CustomColor.customcolor,
//             textColor: Colors.white,
//             child: Text(
//               '예약하기',
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20.0,
//                   color: CustomColor.customcolor2),
//             ),
//             onPressed: () {},
//           )
//         ],
//       ),
//     );
//   }
// }
