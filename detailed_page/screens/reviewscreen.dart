// import 'package:flutter/material.dart';
// import 'package:toppingukking/homecategory/widgets/custom_bar_widget.dart';
// import 'package:toppingukking/detailed_page/widgets/detailed_page3.dart';

// class ReviewScreen extends StatefulWidget {
//   const ReviewScreen({Key key}) : super(key: key);

//   @override
//   ReviewScreenState createState() => ReviewScreenState();
// }

// class ReviewScreenState extends State<ReviewScreen> {
//   double reviewscore = 4.75;
//   int reviewcount = 23;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         iconTheme: IconThemeData(color: Colors.black),
//       ),
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         top: true,
//         bottom: false,
//         child: Stack(
//           children: <Widget>[
//             ScrollConfiguration(
//               behavior: MyBehavior(),
//               child: ListView(
//                 padding: EdgeInsets.only(top: 20.0, bottom: 30.0),
//                 addAutomaticKeepAlives: false,
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: reviewStarScore(reviewscore, reviewcount, 24, 24),
//                   ),
//                   reviewChart(),
//                   reviewCard(),
//                   reviewCard(),
//                   reviewCard(),
//                   reviewCard(),
//                   reviewCard(),
//                 ],
//               ),
//             ),
//             // CustomBar(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Para borrar el efecto rebote al scrollear la ListView
// class MyBehavior extends ScrollBehavior {
//   @override
//   Widget buildViewportChrome(
//       BuildContext context, Widget child, AxisDirection axisDirection) {
//     return child;
//   }
// }
