import 'package:flutter/material.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  final List<Map<String, dynamic>> students = [
    {
      'name': 'Ansari Sufiyan',
      'profilePhoto': 'assets/userimg.jpg',
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
      'profilePhoto': 'assets/userimg.jpg',
      'rollNumber': 'CS3268',
      'class': 'CSE 3rd Year',
      'prn': 'PRN123458',
      'status': 'Absent'
    },
    {
      'name': 'ABCD',
      'profilePhoto': 'assets/userimg.jpg',
      'rollNumber': 'CS3280',
      'class': 'CSE 3rd Year',
      'prn': 'PRN123459',
      'status': 'Absent'
    },
  ];

  int presentCount = 0;

  void updateAttendanceStatus(int index, String status) {
    setState(() {
      students[index]['status'] = status;
    });
  }

  void navigateToAttendanceResultPage() {
    // Calculate the number of students marked as 'Present'
    presentCount = students.where((student) => student['status'] == 'Present').length;

    // Navigate to the results page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AttendanceResultPage(presentCount: presentCount),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance'),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              final student = students[index];
              return Card(
                margin: const EdgeInsets.all(8.0),
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
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                student['name']!,
                                style: const TextStyle(
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
                            child: const Text('Present'),
                          ),
                          const SizedBox(width: 8),
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
                            child: const Text('Absent'),
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
              onPressed: navigateToAttendanceResultPage,
              child: const Icon(Icons.check),
            ),
          ),
        ],
      ),
    );
  }
}

class AttendanceResultPage extends StatelessWidget {
  final int presentCount;

  const AttendanceResultPage({Key? key, required this.presentCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Result'),
      ),
      body: Center(
        child: Text(
          'Number of students present: $presentCount',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
