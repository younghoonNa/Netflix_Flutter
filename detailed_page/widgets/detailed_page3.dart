// import 'dart:ffi';
// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:toppingukking/detailed_page/screens/reviewscreen.dart';
// import 'package:toppingukking/detailed_page/utilities/detailed_list.dart';

// class ReviewWidget extends StatefulWidget {

//   ReviewWidget({sixthKey, this.page_title, this.reviewscore, this.reviewcount}) : super(key: sixthKey);
//   final String page_title;
//   double reviewscore;
//   int reviewcount;
//   // final Key keynum;
//   @override
//   _ReviewWidgetState createState() => _ReviewWidgetState();
// }

// class _ReviewWidgetState extends State<ReviewWidget> {

//   //리뷰스코어의 겨우 서버에서 받아 평균
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//       key: widget.key,
//       padding: EdgeInsets.only(left: 20.0, right: 20.0),
//       child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           widget.page_title,
//           style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
//         ),
//         reviewStarScore(widget.reviewscore, widget.reviewcount, 18, 18),
//         SizedBox(
//           height: 20.0,
//         ),
//         Container(
//           height: 300,
//           child: ListView(
//               scrollDirection: Axis.horizontal,
//               // padding: EdgeInsets.only(top: 0, bottom: 0),
//               // addAutomaticKeepAlives: false,
//               children: [
//                 reviewCard(),
//                 reviewCard(),
//                 reviewCard(),
//               ],
//             ),

//         ),
//         SizedBox(
//           height: 20.0,
//         ),
//         Container(child: reviewButton(widget.reviewcount)),
//       ],
//     ),
//     );
//   }
// }

// class reviewCard extends StatelessWidget {
//   const reviewCard({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10), // if you need this
//         side: BorderSide(
//           color: Colors.grey.withOpacity(0.2),
//           width: 1,
//         ),
//       ),
//       child: Container(
//         height: 300,
//         width: 350,
//         child: Padding(
//           padding: EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 24.0,
//                     backgroundImage: AssetImage('assets/images/4077251.png'),
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(10.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           '정욱',
//                           style: TextStyle(color: Colors.black, fontSize: 17.0),
//                         ),
//                         Text(
//                           '2주 전',
//                           style: TextStyle(color: Colors.grey, fontSize: 14.0),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               Text(
//                 '신사역 5번 출구랑 가까워서 너무 좋았어요. 오르막이라 조금 힘들긴 했지만 루프탑에 올라가보면 아주 만족하실꺼에요~ 체크인 체크아웃 다 낫배드ㅋㅋ 그래도 루프탑 뷰는 정말 끝내줍니당',
//                 style: TextStyle(color: Colors.grey, fontSize: 15.0),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class reviewButton extends StatelessWidget {
//   int _reviewcount;
//   reviewButton(this._reviewcount);
//   List<ListReviewSection> listReviewSection = []; //클래스 호출

//   @override
//   Widget build(BuildContext context) {
//     return ConstrainedBox(
//       constraints: BoxConstraints.tightFor(width: 500, height: 50),
//       child: ElevatedButton(
//         style: ButtonStyle(
//           shape: MaterialStateProperty.all(RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10.0),
//               side: BorderSide(color: Colors.black54))),
//           shadowColor: MaterialStateProperty.all<Color>(Colors.black),
//           backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
//           //alignment: Alignment.center,
//         ),
//         onPressed: () {
//           Navigator.pushNamed(context, 'review');
//         },
//         child: Text(
//           '후기 ${_reviewcount}개 모두 보기',
//           style: TextStyle(fontSize: 15, color: Colors.black),
//         ),
//       ),
//     );
//   }
// }

// class reviewStarScore extends StatelessWidget {
//   double _reviewscore;
//   int _reviewcount;
//   double _iconsize;
//   double _fontsize;
//   reviewStarScore(
//       this._reviewscore, this._reviewcount, this._iconsize, this._fontsize);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(0.0),
//       child: Row(
//         children: [
//           Icon(
//             Icons.star,
//             size: _iconsize,
//             color: Colors.red,
//           ),
//           Text(
//             ' ${_reviewscore}점 (후기 ${_reviewcount}개)',
//             style: TextStyle(fontSize: _fontsize, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class reviewChart extends StatelessWidget {
//   const reviewChart({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       margin: const EdgeInsets.only(
//         top: 10.0,
//         left: 20.0,
//         right: 20.0,
//         bottom: 10.0,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.00),
//             offset: Offset(0, 5),
//             blurRadius: 10,
//             spreadRadius: 0,
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(
//           1.0,
//         ),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     right: 20.0,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
//                         child: Text(
//                           "체크인",
//                           style: TextStyle(color: Colors.black, fontSize: 16.0),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
//                         child: Text(
//                           "위치",
//                           style: TextStyle(color: Colors.black, fontSize: 16.0),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
//                         child: Text(
//                           "가격 대비 만족도",
//                           style: TextStyle(color: Colors.black, fontSize: 16.0),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
//                         child: Text(
//                           "청결도",
//                           style: TextStyle(color: Colors.black, fontSize: 16.0),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 5.0,
//                       margin: const EdgeInsets.symmetric(
//                         vertical: 15.0,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                       ),
//                       width: MediaQuery.of(context).size.width * 0.54,
//                     ),
//                     Container(
//                       height: 5.0,
//                       margin: const EdgeInsets.symmetric(
//                         vertical: 15.0,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                       ),
//                       width: MediaQuery.of(context).size.width * 0.56,
//                     ),
//                     Container(
//                       height: 5.0,
//                       margin: const EdgeInsets.symmetric(
//                         vertical: 15.0,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                       ),
//                       width: MediaQuery.of(context).size.width * 0.60,
//                     ),
//                     Container(
//                       height: 5.0,
//                       margin: const EdgeInsets.symmetric(
//                         vertical: 15.0,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                       ),
//                       width: MediaQuery.of(context).size.width * 0.50,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SecondNotifier with ChangeNotifier{
//   double value=0; //default
//   void ChangeValue(double newValue){
//     value=newValue;
//     notifyListeners();
//   }
// }
