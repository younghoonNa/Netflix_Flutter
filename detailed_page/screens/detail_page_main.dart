// import 'package:favorite_button/favorite_button.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:toppingukking/detailed_page/widgets/detailed_page1.dart';
// import 'package:toppingukking/detailed_page/widgets/detailed_page2.dart';
// import 'package:toppingukking/detailed_page/widgets/reservation_tab.dart';
// import 'package:toppingukking/home/screens/favoritetwo.dart';
// import 'package:toppingukking/detailed_page/utilities/detailed_list.dart';
// import 'dart:math' as math;
// import 'package:provider/provider.dart';
// import 'package:toppingukking/onboarding/theme.dart';
// import 'package:toppingukking/detailed_page/widgets/detailed_page3.dart';

// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   _SliverAppBarDelegate({
//     @required this.minHeight,
//     @required this.maxHeight,
//     @required this.child,
//   });
//   final double minHeight;
//   final double maxHeight;
//   final Widget child;

//   @override
//   double get minExtent => minHeight;
//   @override
//   double get maxExtent => math.max(maxHeight, minHeight);
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return new SizedBox.expand(child: child);
//   }

//   @override
//   bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
//     return maxHeight != oldDelegate.maxHeight ||
//         minHeight != oldDelegate.minHeight ||
//         child != oldDelegate.child;
//   }
// }

// class SliversExample extends StatefulWidget {
//   @override
//   _SliversExampleState createState() => _SliversExampleState();
// }

// class _SliversExampleState extends State<SliversExample>
//     with TickerProviderStateMixin {
//   final firstKey = new GlobalKey();
//   final secondKey = new GlobalKey();
//   final thirdKey = new GlobalKey();
//   final fourthKey = new GlobalKey();
//   final fifthKey = new GlobalKey();
//   final sixthKey = new GlobalKey();
//   final sliverListtKey = new GlobalKey();

//   final adKey = new GlobalKey();
//   final accountKey = new GlobalKey();
//   final loanKey = new GlobalKey();
//   final serviceKey = new GlobalKey();
//   final allianceKey = new GlobalKey();

//   RenderBox overRender;
//   RenderBox revRender;
//   RenderBox menuRender;
//   RenderBox contactRender;
//   RenderBox sliverRender;
//   ScrollController _scrollController;
//   TabController _tabController;
//   TabController _topTabController;
//   double firstHeight = 0;
//   double secondHeight = 0;
//   double thirdHeight = 0;
//   double fourthHeight = 0;
//   double fifthHeight = 0;
//   double sixthHeight = 0;
//   bool isTabToScroll = false;
//   double firstHeigh = 0;
//   double secondHeigh = 0;
//   double thirdHeigh = 0;
//   double fourthHeigh = 0;
//   double allianceHeight = 0;

//   //탭바 리스트
//   final List tabbar_title = [
//     '공간소개',
//     '시설안내',
//     '유의사항',
//     '환불정책',
//     'Q & A',
//     '이용후기'
//   ];

//   //상세 페이지 속성
//   var detailed_list = Detailed_list(
//     part0: 0,
//     part1: [
//       '어나더레벨',
//       '주소',
//       '시간 (거리)',
//     ],
//     part2: [
//       BoxModel(color: 0xFFDFDBEE, text: 'Wifi', iconName: 'wifi'),
//       BoxModel(color: 0xFFDFDBEE, text: 'Ac', iconName: 'ac_unit'),
//       BoxModel(color: 0xFFDFDBEE, text: 'Pool', iconName: 'pool'),
//       BoxModel(color: 0xFFDFDBEE, text: 'More', iconName: 'apps'),
//     ],
//     part3:
//         'part 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.',
//     part4:
//         'part 4-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.',
//     part5:
//         'part 5-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.',
//     part6:
//         'part 6-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.\nThis 3-star hotel combines style, comfort and the modern side of Pontianak city on the Kapuas River delta, West Kalimantan. As the capital of the province.',
//     price: '280.000원'
//   );

//   var review_list = Reviewlist(
//     4.75,23
//   );

//   @override
//   void initState() {
//     // TODO: implement initState

//     _scrollController = ScrollController();
//     _tabController = TabController(length: 6, vsync: this);
//     _topTabController = TabController(length: 6, vsync: this);
//     _scrollController.addListener(() {
//       _onScroll();
//     });
//     super.initState();
//     // ClassBuilder.register(() => Detailed_list(detailed_name));
//   }

//   void _onScroll() {
//     if (isTabToScroll) return;
//     if (firstKey.currentContext != null) {
//       firstHeight = firstKey.currentContext.size.height;
//     }
//     if (secondKey.currentContext != null) {
//       secondHeight = secondKey.currentContext.size.height;
//     }
//     if (thirdKey.currentContext != null) {
//       thirdHeight = thirdKey.currentContext.size.height;
//     }
//     if (fourthKey.currentContext != null) {
//       fourthHeight = fourthKey.currentContext.size.height;
//     }
//     if (fifthKey.currentContext != null) {
//       fifthHeight = fifthKey.currentContext.size.height;
//     }
//     if (sixthKey.currentContext != null) {
//       sixthHeight = sixthKey.currentContext.size.height;
//     }

//     if (_scrollController.offset <= firstHeight) {
//       _tabController.animateTo(0,
//           duration: const Duration(milliseconds: 200), curve: Curves.linear);
//     } else if (_scrollController.offset > firstHeight &&
//         _scrollController.offset <= firstHeight + secondHeight) {
//       _tabController.animateTo(1,
//           duration: const Duration(milliseconds: 200), curve: Curves.linear);
//     } else if (_scrollController.offset > firstHeight + secondHeight &&
//         _scrollController.offset <= firstHeight + secondHeight + thirdHeight) {
//       _tabController.animateTo(2,
//           duration: const Duration(milliseconds: 200), curve: Curves.linear);
//     } else if (_scrollController.offset >
//             firstHeight + secondHeight + thirdHeight &&
//         _scrollController.offset <=
//             firstHeight + secondHeight + thirdHeight + fourthHeight) {
//       _tabController.animateTo(3,
//           duration: const Duration(milliseconds: 200), curve: Curves.linear);
//     } else if (_scrollController.offset >
//             firstHeight + secondHeight + thirdHeight + fourthHeight &&
//         _scrollController.offset <=
//             firstHeight +
//                 secondHeight +
//                 thirdHeight +
//                 fourthHeight +
//                 fifthHeight) {
//       _tabController.animateTo(4,
//           duration: const Duration(milliseconds: 200), curve: Curves.linear);
//     } else if (_scrollController.offset >
//             firstHeight +
//                 secondHeight +
//                 thirdHeight +
//                 fourthHeight +
//                 fifthHeight &&
//         _scrollController.offset <=
//             firstHeight +
//                 secondHeight +
//                 thirdHeight +
//                 fourthHeight +
//                 fifthHeight +
//                 sixthHeight) {
//       _tabController.animateTo(5,
//           duration: const Duration(milliseconds: 200), curve: Curves.linear);

//       if (_scrollController.offset >=
//               _scrollController.position.maxScrollExtent &&
//           !_scrollController.position.outOfRange) {
//         _tabController.animateTo(5,
//             duration: const Duration(milliseconds: 200), curve: Curves.linear);
//       } else {
//         _tabController.animateTo(5,
//             duration: const Duration(milliseconds: 200), curve: Curves.linear);
//       }
//     }
//   }

//   void _onTapToScroll(int index) async {
//     var keys = [firstKey, secondKey, thirdKey, fourthKey, fifthKey, sixthKey];
//     var previousIndex = _tabController.previousIndex;
//     isTabToScroll = true;
//     if (index == 0) {
//       await _scrollController.animateTo(
//         0,
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.linear,
//       );
//     } else {
//       if (previousIndex < index) {
//         for (var i = previousIndex; i <= index; i++) {
//           await _scrollController.position.ensureVisible(
//             keys[i].currentContext.findRenderObject(),
//             duration: const Duration(milliseconds: 200),
//             curve: Curves.linear,
//           );
//         }
//       } else {
//         for (var i = previousIndex; i >= index; i--) {
//           await _scrollController.position.ensureVisible(
//             keys[i].currentContext.findRenderObject(),
//             duration: const Duration(milliseconds: 200),
//             curve: Curves.linear,
//           );
//         }
//       }
//     }
//     isTabToScroll = false;
//   }

//   SliverPersistentHeader makeTabBarHeader() {
//     return SliverPersistentHeader(
//       pinned: true,
//       delegate: _SliverAppBarDelegate(
//         minHeight: 50.0,
//         maxHeight: 50.0,
//         child: Container(
//           color: CustomColor.customcolor,
//           child: TabBar(
//             onTap: _onTapToScroll,
//             unselectedLabelColor: CustomColor.customcolor2,
//             indicatorColor: Colors.red,
//             indicatorWeight: 2.0,
//             labelColor: CustomColor.customcolor,
//             controller: _tabController,
//             labelPadding: EdgeInsets.symmetric(horizontal: 0.0),
//             indicator: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(10),
//                   topRight: Radius.circular(10),
//                   // bottomLeft: Radius.circular(10),
//                   // bottomRight: Radius.circular(10),
//                 ),
//                 color: Colors.white),
//             tabs: <Widget>[
//               Tab(
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Text(
//                     tabbar_title[0],
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               Tab(
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Text(
//                     tabbar_title[1],
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               Tab(
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Text(
//                     tabbar_title[2],
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               Tab(
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Text(
//                     tabbar_title[3],
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               Tab(
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Text(
//                     tabbar_title[4],
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               Tab(
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Text(
//                     tabbar_title[5],
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//             ],
//             indicatorSize: TabBarIndicatorSize.tab,
//           ),
//         ),
//       ),
//     );
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _topTabController.dispose();
//     _scrollController.dispose();
//   }

// // 메인 내용
//   @override
//   Widget build(BuildContext context) {
//     final _screenSize = MediaQuery.of(context).size;
//     return SafeArea(
//       top: false,
//       child: Scaffold(
//         // backgroundColor: Colors.white,
//         // appBar: AppBar(),
//         body: DefaultTabController(
//           length: 6,
//           child: CustomScrollView(
//             controller: _scrollController,
//             slivers: <Widget>[
//               SliverAppBar(
//                 leading: IconButton(
//                     icon: Icon(Icons.chevron_left, size: 35),
//                     tooltip: 'Click to Home Screen',
//                     onPressed: () {
//                       Navigator.pop(context);
//                     }),
//                 actions: <Widget>[
//                   _favoriteIcon(detailed_list.part0, context),
//                                     SizedBox(width: 10)
//                 ],

//                 backgroundColor: CustomColor.customcolor,
//                 expandedHeight: 300.0,
//                 floating: false,
//                 pinned: true,
//                 flexibleSpace: FlexibleSpaceBar(
//                   centerTitle: true,
//                   title: Text("",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16.0,
//                       )),
//                   background: Container(
//                     height: _screenSize.height * 0.45,
//                     child: Swiper(
//                       pagination: new SwiperPagination(
//                         margin: EdgeInsets.only(bottom: 50.0),
//                         builder: new DotSwiperPaginationBuilder(
//                             activeColor: CustomColor.customcolor),
//                       ),
//                       itemCount: 3,
//                       itemBuilder: (BuildContext context, int index) {
//                         return Image(
//                           fit: BoxFit.cover,
//                           image:
//                               AssetImage('assets/imgs/room-${index + 1}.jpg'),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ),

//               makeTabBarHeader(),

// //상세페이지 #1 ~ #6
//               SliverList(
//                 key: sliverListtKey,
//                 delegate: SliverChildListDelegate(
//                   [
//                     //#1
//                     Detailed_Page1(firstKey, detailed_list.part1),
//                     //#2
//                     Detailed_Page1_2(secondKey, detailed_list.part2),
//                     //#3 ~ #5
//                     Detailed_Page2(
//                         thirdKey, tabbar_title[2], detailed_list.part3),
//                     Detailed_Page2(
//                         fourthKey, tabbar_title[3], detailed_list.part4),
//                     Detailed_Page2(
//                         fifthKey, tabbar_title[4], detailed_list.part5),
//                     //#6
//                     ReviewWidget(page_title: tabbar_title[5], reviewcount: review_list.count,reviewscore: review_list.score),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: Reservation_tab(detailed_list.price),
//       ),
//     );
//   }
// }

//   @override
//   Widget _favoriteIcon(int pageid, BuildContext context) {
//   var favoritesList = Provider.of<Favorites>(context);
//     return IconButton(
//                     key: Key('$pageid'),
//                     icon: favoritesList.items.contains(pageid)
//                         ? const Icon(Icons.star)
//                         : const Icon(Icons.star_border),
//                     onPressed: () {
//                       !favoritesList.items.contains(pageid)
//                           ? {favoritesList.add(pageid), print(pageid)}
//                           : favoritesList.remove(pageid);
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text(favoritesList.items.contains(pageid)
//                               ? 'Added to favorites.'
//                               : 'Removed from favorites.'),
//                           duration: const Duration(seconds: 1),
//                         ),
//                       );
//                     },
//                   );

//   }
