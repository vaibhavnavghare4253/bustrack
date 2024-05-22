import 'package:flutter/material.dart';

class AttendancePage extends StatefulWidget {
  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  // Dummy data for students' attendance
  final List<Map<String, dynamic>> students = [
    {
      'name': 'Ansari Sufiyan',
      'profilePhoto': 'assets/sufi.jpg',
      'rollNumber': 'CS3272',
      'class': 'CSE 3rd Year',
      'prn': 'PRN123456',
      'status': 'Absent'
    },

    {
      'name': 'Sachin Bodkhe',
      'profilePhoto': 'assets/userimg.jpg',
      'rollNumber': 'CS3279',
      'class': 'CSE 3rd Year',
      'prn': 'PRN123457',
      'status': 'Absent'
    },
    {
      'name': 'Vaibhav Navghare',
      'profilePhoto': 'assets/userimg.jpg',
      'rollNumber': 'CS3267',
      'class': 'CSE 3rd Year',
      'prn': 'PRN123458',
      'status': 'Absent'
    },
    {
      'name': 'Bhushan Sapkale',
      'profilePhoto': 'assets/userimg.jpg',
      'rollNumber': 'CSE 3rd Year',
      'class': 'CSE 3rd Year',
      'prn': 'PRN123459',
      'status': 'Absent'
    },
    {
      'name': 'Vaibhav Dapke',
      'profilePhoto': 'assets/alex_johnson.jpg',
      'rollNumber': 'CS3268',
      'class': 'CSE 3rd Year',
      'prn': 'PRN123458',
      'status': 'Absent'
    },
    {
      'name': 'ABCD',
      'profilePhoto': 'assets/emily_davis.jpg',
      'rollNumber': 'CS3280',
      'class': 'CSE 3rd Year',
      'prn': 'PRN123459',
      'status': 'Absent'
    },
    // Add more students as needed
  ];



  void updateAttendanceStatus(int index, String status) {
    setState(() {
      students[index]['status'] = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              final student = students[index];
              return Card(
                margin: EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(student['profilePhoto']),
                            radius: 30,
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                student['name']!,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Roll Number: ${student['rollNumber']}'),
                              Text('Class: ${student['class']}'),
                              Text('PRN: ${student['prn']}'),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              updateAttendanceStatus(index, 'Present');
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  return student['status'] == 'Present' ? Colors.green : Colors.grey;
                                },
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            ),
                            child: Text('Present'),
                          ),
                          SizedBox(width: 8),
                          ElevatedButton(
                            onPressed: () {
                              updateAttendanceStatus(index, 'Absent');
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  return student['status'] == 'Absent' ? Colors.red : Colors.grey;
                                },
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            ),
                            child: Text('Absent'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: FloatingActionButton(
              onPressed: () {
                // Handle submit action
              },
              child: Icon(Icons.check),
            ),
          ),
        ],
      ),
    );
  }
}
