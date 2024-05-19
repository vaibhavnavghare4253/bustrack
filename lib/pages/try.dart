// import 'package:flutter/material.dart';
//
// class tryoff extends StatelessWidget {
//   const tryoff({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('WELCOME'),
//       ),
//
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   CircleAvatar(
//                     radius: 40,
//                     backgroundImage: AssetImage('assets/apple.png'), // Add your image asset path
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Welcome, User',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ListTile(
//               leading: const Icon(Icons.home),
//               title: const Text('Home'),
//               onTap: () {
//                 // Navigate to Home
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.settings),
//               title: const Text('Settings'),
//               onTap: () {
//                 // Navigate to Settings
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.contacts),
//               title: const Text('Contact Us'),
//               onTap: () {
//                 // Navigate to Contact Us
//               },
//             ),
//           ],
//         ),
//       ),
//
//
//
//       body: Column(children: [
// //we will divide the screen into two parts
// //fixed height for first half
//         SizedBox(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height / 2.5,
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text('Hi, ',
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .titleMedium!
//                                   .copyWith(
//                                     fontWeight: FontWeight.w600,
//                                 fontSize: 45
//                                   )),
//                           Text('User ',
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .titleMedium!
//                                   .copyWith(
//                                     fontWeight: FontWeight.w500,
//                                 fontSize: 45
//                                   )),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         'PRN:123456789',
//                         style:
//                             Theme.of(context).textTheme.titleMedium!.copyWith(
//                                   fontSize: 20,
//                                 ),
//                       ),
//                       // SizedBox(
//                       //   height: 0,
//                       // ),
//                       Align(
//                         alignment: const Alignment(-1.0,1.0),
//                         child: Container(
//                         width: 180,
//                         height: 30,
//                         decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                       ),
//                       ),
//
//                     ],
//                   ),
//                 ],
//               ),
//               const Align(
//                 alignment: Alignment(1.0, -0.2),
//                 child: CircleAvatar(
//                   minRadius: 70.0,
//                   maxRadius: 70.0,
//                   backgroundColor: Colors.blue,
//                   // backgroundImage: AssetImage(''),
//                 ),
//               ),
//             ],
//           ),
//         ),
//
//         Expanded(
//           child: Container(
//             color: Colors.white,
//             child: Container(
//               width: MediaQuery.of(context).size.width,
//               decoration: const BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(80),
//                     topRight: Radius.circular(80),
//                   )),
//
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   OutlinedButton(
//                     onPressed: () {
//                       // Perform an action when the first button is pressed
//                     },
//                     style: OutlinedButton.styleFrom(
//                       foregroundColor: Colors.white,
//                       side: const BorderSide(color: Colors.white, width: 4),
//                       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                       minimumSize: const Size(150, 50),
//                       maximumSize: const Size(200, 60),
//                     ),
//                     child: const Text(
//                       'Button 1',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   OutlinedButton(
//                     onPressed: () {
//                       // Perform an action when the second button is pressed
//                     },
//                     style: OutlinedButton.styleFrom(
//                       foregroundColor: Colors.white,
//                       side: const BorderSide(color: Colors.white, width: 4),
//                       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                       minimumSize: const Size(150, 50),
//                       maximumSize: const Size(200, 60),
//                     ),
//                     child: const Text(
//                       'Button 2',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   OutlinedButton(
//                     onPressed: () {
//                       // Perform an action when the third button is pressed
//                     },
//                     style: OutlinedButton.styleFrom(
//                       foregroundColor: Colors.white,
//                       side: const BorderSide(color: Colors.white, width: 4),
//                       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                       minimumSize: const Size(150, 50),
//                       maximumSize: const Size(200, 60),
//                     ),
//                     child: const Text(
//                       'Button 3',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//       ),
//     );
//   }
// }
//
// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// //
// // class AttendanceScreen extends StatefulWidget {
// //   const AttendanceScreen({Key? key}) : super(key: key);
// //   @override
// //   _AttendanceScreenState createState() => _AttendanceScreenState();
// // }
// //
// // class _AttendanceScreenState extends State<AttendanceScreen> {
// //   Map<String, bool> attendance = {};
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Attendance'),
// //       ),
// //       body: StreamBuilder<QuerySnapshot>(
// //         stream: FirebaseFirestore.instance.collection('users').snapshots(),
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.waiting) {
// //             return Center(child: CircularProgressIndicator());
// //           }
// //           if (snapshot.hasError) {
// //             return Center(child: Text('Error: ${snapshot.error}'));
// //           }
// //           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
// //             return Center(child: Text('No users found'));
// //           }
// //
// //           return ListView(
// //             children: snapshot.data!.docs.map((doc) {
// //               String userName = doc['name'];
// //               bool isChecked = attendance[userName] ?? false;
// //
// //               return ListTile(
// //                 title: Text(userName),
// //                 trailing: Checkbox(
// //                   value: isChecked,
// //                   onChanged: (bool? value) {
// //                     setState(() {
// //                       attendance[userName] = value!;
// //                     });
// //                   },
// //                 ),
// //               );
// //             }).toList(),
// //           );
// //         },
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _submitAttendance,
// //         child: Icon(Icons.check),
// //       ),
// //     );
// //   }
// //
// //   void _submitAttendance() {
// //     // Code to handle submission of attendance, such as updating Firestore.
// //     print(attendance);
// //   }
// // }
