import 'package:flutter/material.dart';
import 'package:my_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//   void _showModalBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
          
//             top: Radius.circular(40),
//           ),
//         ),
//         isDismissible: true,
//         enableDrag: true,
//         backgroundColor: Colors.transparent.withOpacity(0.1),
//         context: context,
//         isScrollControlled: true,
//         builder: (context) {
//           return DraggableScrollableSheet(
//               expand: false,
//               initialChildSize: 0.3,
//               minChildSize: 0.3,
//               maxChildSize: 0.9,
//               builder: (context, controller) {
//                 return Container(
//                   decoration: const BoxDecoration(
//                     color: Color(0xfff6f7fe),
//                     borderRadius: BorderRadius.vertical(
//                       top: Radius.circular(40),
//                     ),
//                   ),
//                   child: ListView(
//                     padding: const EdgeInsets.all(13),
//                     physics: const BouncingScrollPhysics(),
//                     controller: controller,
//                     children: [
//                       Card(
//                         elevation: 0,
//                         color: Colors.white,
//                         child: Column(children: [
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           Row(
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: const Color(0xfffff7e8),
//                                     borderRadius: BorderRadius.circular(20)),
//                                 child: const Padding(
//                                   padding: EdgeInsets.symmetric(
//                                       vertical: 8.0, horizontal: 15),
//                                   child: Text(
//                                     'Member Gold',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Color(0xFFffd283)),
//                                   ),
//                                 ),
//                               ),
//                               const Spacer()
//                             ],
//                           ),
//                           const ListTile(
//                             title: Text(
//                               'Anam Doe',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 25,
//                                   color: Colors.black),
//                             ),
//                             trailing: Icon(
//                               Icons.edit,
//                               color: Color(0xff41dc85),
//                               size: 16,
//                             ),
//                             subtitle: Text('johndoe@abc.com'),
//                           )
//                         ]),
//                       )
//                     ],
//                   ),
//                 );
//               });
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: const Center(
//           child: Text('Scrollable bottom sheet'),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () => _showModalBottomSheet(context),
//           child: const Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
