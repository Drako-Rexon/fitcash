import 'package:fitcash/utils/assets.dart';
import 'package:flutter/material.dart';

class SharingPage extends StatelessWidget {
  const SharingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
        ],
      ),
      // body: Container(
      //   clipBehavior: Clip.antiAlias,
      //   decoration: BoxDecoration(color: Colors.black),
      //   child: Stack(
      //     children: [
      //       Container(
      //         width: 338,
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             Container(
      //               child: Column(
      //                 mainAxisSize: MainAxisSize.min,
      //                 mainAxisAlignment: MainAxisAlignment.start,
      //                 crossAxisAlignment: CrossAxisAlignment.center,
      //                 children: [
      //                   Container(
      //                     width: 30,
      //                     height: 25.49,
      //                     child: Stack(
      //                       children: [
      //                         Positioned(
      //                           left: 28,
      //                           top: 0,
      //                           child: Transform(
      //                             transform: Matrix4.identity()
      //                               ..translate(0.0, 0.0)
      //                               ..rotateZ(3.14),
      //                             child: Container(
      //                               width: 9,
      //                               height: 9,
      //                               decoration: ShapeDecoration(
      //                                 color: Color(0xFF82A146),
      //                                 shape: OvalBorder(),
      //                               ),
      //                             ),
      //                           ),
      //                         ),
      //                         Image.asset(Ficons.meetIcon),
      //                       ],
      //                     ),
      //                   ),
      //                   const SizedBox(height: 6),
      //                   SizedBox(
      //                     width: 338,
      //                     child: Text(
      //                       'Activity data like workout types and titles, active calories or kilojoules, exercise minutes, stand or rill hours, steps, and time zone will be securely shared with the people you choose.',
      //                       textAlign: TextAlign.center,
      //                       style: TextStyle(
      //                         color: Color(0xFF8E8E90),
      //                         fontSize: 12,
      //                         fontFamily: 'SF Pro',
      //                         fontWeight: FontWeight.w400,
      //                         height: 0,
      //                       ),
      //                     ),
      //                   ),
      //                   const SizedBox(height: 6),
      //                   Text(
      //                     'See how your data is managed..',
      //                     textAlign: TextAlign.center,
      //                     style: TextStyle(
      //                       color: Color(0xFFC9FC6E),
      //                       fontSize: 10,
      //                       fontFamily: 'SF Pro',
      //                       fontWeight: FontWeight.w400,
      //                       height: 0,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             const SizedBox(height: 22),
      //             Container(
      //               width: 336,
      //               padding: const EdgeInsets.symmetric(
      //                   horizontal: 10, vertical: 16),
      //               decoration: ShapeDecoration(
      //                 color: Color(0xFF151515),
      //                 shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(14),
      //                 ),
      //               ),
      //               child: Row(
      //                 mainAxisSize: MainAxisSize.min,
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 crossAxisAlignment: CrossAxisAlignment.center,
      //                 children: [
      //                   Text(
      //                     'Get Started',
      //                     style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 18,
      //                       fontFamily: 'SF Pro',
      //                       fontWeight: FontWeight.w500,
      //                       height: 0,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             Container(
      //               width: 125,
      //               height: 204,
      //               decoration: ShapeDecoration(
      //                 image: DecorationImage(
      //                   image: NetworkImage(
      //                       "https://www.eso.org/public/archives/images/thumb300y/eso2008a.jpg"),
      //                   fit: BoxFit.cover,
      //                 ),
      //                 shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(180.50),
      //                 ),
      //               ),
      //             ),
      //             const SizedBox(height: 17),
      //             Text(
      //               'Share Activity',
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontSize: 30,
      //                 fontFamily: 'SF Pro',
      //                 fontWeight: FontWeight.w400,
      //                 height: 0,
      //               ),
      //             ),
      //             const SizedBox(height: 17),
      //             SizedBox(
      //               width: 300,
      //               child: Text(
      //                 'Invite friends to support, challenge, and cheer each other on. Share workouts, receive progress notifications, and send messages --- right from the fitness app.',
      //                 textAlign: TextAlign.center,
      //                 style: TextStyle(
      //                   color: Colors.white,
      //                   fontSize: 16,
      //                   fontFamily: 'SF Pro',
      //                   fontWeight: FontWeight.w400,
      //                   height: 0,
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Positioned(
      //         left: 0,
      //         top: 824,
      //         child: Container(
      //           width: 390,
      //           height: 34,
      //           padding: const EdgeInsets.all(10),
      //           decoration: BoxDecoration(
      //             color: Color(0xFF1C1C1C),
      //             // border: Border.all(
      //             //   left: BorderSide(color: Color(0xFF1C1C1C)),
      //             //   top: BorderSide(width: 1, color: Color(0xFF1C1C1C)),
      //             //   right: BorderSide(color: Color(0xFF1C1C1C)),
      //             //   bottom: BorderSide(color: Color(0xFF1C1C1C)),
      //             // ),
      //           ),
      //           child: Column(
      //             mainAxisSize: MainAxisSize.min,
      //             mainAxisAlignment: MainAxisAlignment.end,
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               Container(
      //                 width: 167,
      //                 height: 5,
      //                 decoration: ShapeDecoration(
      //                   color: Colors.white,
      //                   shape: RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(3)),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Positioned(
      //         left: 1,
      //         top: 760,
      //         child: Container(
      //           width: 388,
      //           height: 64,
      //           padding:
      //               const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      //           decoration: BoxDecoration(
      //             color: Color(0x470F0F0F),
      //             // border: Border.only(
      //             //   left: BorderSide(color: Color(0xFF212121)),
      //             //   top: BorderSide(width: 1, color: Color(0xFF212121)),
      //             //   right: BorderSide(color: Color(0xFF212121)),
      //             //   bottom: BorderSide(color: Color(0xFF212121)),
      //             // ),
      //           ),
      //           child: Row(
      //             mainAxisSize: MainAxisSize.min,
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               Container(
      //                 child: Column(
      //                   mainAxisSize: MainAxisSize.min,
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   crossAxisAlignment: CrossAxisAlignment.center,
      //                   children: [
      //                     Container(
      //                       width: 24.85,
      //                       height: 25.05,
      //                       child: Stack(
      //                         children: [
      //                           Positioned(
      //                             left: 0,
      //                             top: 0.19,
      //                             child: Container(
      //                               width: 24.85,
      //                               height: 24.85,
      //                               decoration: ShapeDecoration(
      //                                 shape: OvalBorder(
      //                                   side: BorderSide(
      //                                       width: 5.37,
      //                                       color: Color(0xFF767676)),
      //                                 ),
      //                               ),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                     const SizedBox(height: 3),
      //                     Text(
      //                       'Summary',
      //                       style: TextStyle(
      //                         color: Color(0xFF767676),
      //                         fontSize: 12,
      //                         fontFamily: 'SF Pro',
      //                         fontWeight: FontWeight.w400,
      //                         height: 0,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               const SizedBox(width: 78),
      //               Container(
      //                 child: Column(
      //                   mainAxisSize: MainAxisSize.min,
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   crossAxisAlignment: CrossAxisAlignment.center,
      //                   children: [
      //                     Container(
      //                       width: 24.50,
      //                       height: 24.50,
      //                       child: Stack(
      //                         children: [
      //                           Positioned(
      //                             left: 0,
      //                             top: 0,
      //                             child: Container(
      //                               width: 24.50,
      //                               height: 24.50,
      //                               decoration: ShapeDecoration(
      //                                 color: Color(0xFF767676),
      //                                 shape: OvalBorder(),
      //                               ),
      //                             ),
      //                           ),
      //                           Positioned(
      //                             left: 6.88,
      //                             top: 3.97,
      //                             child: Container(
      //                               width: 11.36,
      //                               height: 15.96,
      //                               decoration: BoxDecoration(
      //                                 image: DecorationImage(
      //                                   image: NetworkImage(
      //                                       "https://www.eso.org/public/archives/images/thumb300y/eso2008a.jpg"),
      //                                   fit: BoxFit.fill,
      //                                 ),
      //                               ),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                     const SizedBox(height: 3),
      //                     Text(
      //                       'Fitness+',
      //                       style: TextStyle(
      //                         color: Color(0xFF767676),
      //                         fontSize: 12,
      //                         fontFamily: 'SF Pro',
      //                         fontWeight: FontWeight.w400,
      //                         height: 0,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               const SizedBox(width: 78),
      //               Container(
      //                 child: Column(
      //                   mainAxisSize: MainAxisSize.min,
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   crossAxisAlignment: CrossAxisAlignment.center,
      //                   children: [
      //                     Container(
      //                       width: 18,
      //                       height: 27,
      //                       decoration: ShapeDecoration(
      //                         image: DecorationImage(
      //                           image: NetworkImage(
      //                               "https://www.eso.org/public/archives/images/thumb300y/eso2008a.jpg"),
      //                           fit: BoxFit.cover,
      //                         ),
      //                         shape: RoundedRectangleBorder(
      //                           borderRadius: BorderRadius.circular(180.50),
      //                         ),
      //                       ),
      //                     ),
      //                     const SizedBox(height: 3),
      //                     Text(
      //                       'Sharing',
      //                       style: TextStyle(
      //                         color: Color(0xFFC9FC6E),
      //                         fontSize: 12,
      //                         fontFamily: 'SF Pro',
      //                         fontWeight: FontWeight.w400,
      //                         height: 0,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
