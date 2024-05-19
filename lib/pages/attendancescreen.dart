import 'package:flutter/material.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  List<Student> students = [
    Student(name: 'maiya bhai'),
    Student(name: 'elon'),
    Student(name: 'stev'),
    Student(name: '2000cc David putra'),
    Student(name: 'Eva adams'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(students[index].name),
            trailing: Checkbox(
              value: students[index].isPresent,
              onChanged: (bool? value) {
                setState(() {
                  students[index].isPresent = value!;
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: _submitAttendance,
        child: Icon(Icons.check),
      ),
    );
  }

  void _submitAttendance() {
    List<String> presentStudents = students
        .where((student) => student.isPresent)
        .map((student) => student.name)
        .toList();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Present Students'),
        content: Text(presentStudents.join(', ')),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}

class Student {
  String name;
  bool isPresent;

  Student({required this.name, this.isPresent = false});
}




// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class AttendanceScreen extends StatefulWidget {
//   const AttendanceScreen({Key? key}) : super(key: key);
//   @override
//   _AttendanceScreenState createState() => _AttendanceScreenState();
// }
//
// class _AttendanceScreenState extends State<AttendanceScreen> {
//   Map<String, bool> attendance = {};
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Attendance'),
//       ),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance.collection('users').snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }
//           if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           }
//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text('No users found'));
//           }
//
//           return ListView(
//             children: snapshot.data!.docs.map((doc) {
//               String userName = doc['name'];
//               bool isChecked = attendance[userName] ?? false;
//
//               return ListTile(
//                 title: Text(userName),
//                 trailing: Checkbox(
//                   value: isChecked,
//                   onChanged: (bool? value) {
//                     setState(() {
//                       attendance[userName] = value!;
//                     });
//                   },
//                 ),
//               );
//             }).toList(),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _submitAttendance,
//         child: Icon(Icons.check),
//       ),
//     );
//   }
//
//   void _submitAttendance() {
//     // Code to handle submission of attendance, such as updating Firestore.
//     print(attendance);
//   }
// }