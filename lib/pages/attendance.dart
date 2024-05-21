import 'package:flutter/material.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  List<Student> students = [
    Student(name: 'Sufiyan Ansari'),
    Student(name: 'Vaibhav Navghare'),
    Student(name: 'Sachin Bodkhe'),
    Student(name: 'Bhushan Sapkale'),
    Student(name: 'Shreyas Pawar'),
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