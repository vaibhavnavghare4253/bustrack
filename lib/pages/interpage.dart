
import 'package:bus_track/pages/track.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'attendance_page.dart';
import 'bus_details_page.dart';
import 'signup.dart';
import 'drawer/contact_us_page.dart';


class Tryoff extends StatelessWidget {
  const Tryoff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('WELCOME'),
        actions: [
          IconButton(

            icon: Icon(Icons.logout),
            onPressed: () {
              // Perform logout action here
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xffff8008),
                      Color(0xffffc837),
                    ]

                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/userimg.jpg'), // Ensure the image path is correct
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome, User',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Navigate to Home
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Edit Profile'),
              onTap: () {
                // Navigate to Settings
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact Us'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUsPage()),
                );
                // Navigate to Contact Us
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                // logout
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                // height: double.infinity,
                // width: double.infinity,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(00),
                    ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffff8008),
                      Color(0xffffc837),
                    ]
                  ),

                  // color: Colors.yellowAccent,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              // color: Colors.white,
                              child: Text(
                                'Hi ',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30,
                                    // backgroundColor: Colors.pinkAccent,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              // color: Colors.pink.shade200,
                              child: Text(
                                'Admin',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30,
                                    // backgroundColor: Colors.pinkAccent,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Container(
                          // color: Colors.pinkAccent,
                          child: Text(
                            'My location: Beed ByPass',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                fontSize: 25,
                                // backgroundColor: Colors.pinkAccent,
                                color: Colors.white),
                          ),
                        ),
                        // SizedBox(height: 16),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Container(
                        //     width: 180,
                        //     height: 30,
                        //     decoration: BoxDecoration(
                        //       color: Colors.pinkAccent,
                        //       borderRadius: BorderRadius.circular(20),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(

                  color: Color(0xffffc837),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(00),
                        topRight: Radius.circular(60),
                      ),
                      color: Colors.white
                      // gradient: LinearGradient(
                      //     colors: [
                      //       Color(0xffff8008),
                      //       Color(0xffffc837),
                      //     ]
                      // ),
                      // color: Colors.yellowAccent,
                      // borderRadius: BorderRadius.only(
                      //   topLeft: Radius.circular(20),
                      //   topRight: Radius.circular(20),
                      // ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BusDetailsPage()),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side: const BorderSide(
                                color: Colors.orange, width: 4),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            minimumSize: Size(200, 50),
                            maximumSize: Size(200, 70),
                          ),
                          child: const Text(
                            'Select Bus',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),

                          ),
                        ),
                        SizedBox(height: 35),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AttendancePage()),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side: const BorderSide(
                                color: Colors.orange, width: 4),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            minimumSize: Size(200, 50),
                            maximumSize: Size(200, 70),
                          ),
                          child: const Text(
                            'Attendance',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        // OutlinedButton(
                        //   onPressed: () {
                        //     // Perform an action when the third button is pressed
                        //   },
                        //   style: OutlinedButton.styleFrom(
                        //     foregroundColor: Colors.white,
                        //     side: const BorderSide(
                        //         color: Colors.white, width: 4),
                        //     padding: const EdgeInsets.symmetric(
                        //         horizontal: 20, vertical: 20),
                        //     minimumSize: Size(200, 50),
                        //     maximumSize: Size(200, 70),
                        //   ),
                        //   child: const Text(
                        //     'Button 3',
                        //     style: TextStyle(
                        //       fontSize: 25,
                        //       fontWeight: FontWeight.bold,
                        //       color: Colors.white,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 26,
            right: 16,
            child: CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.lightBlueAccent,
              backgroundImage:
              AssetImage('assets/sufi.jpg'), // Ensure the image path is correct
            ),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  home: Tryoff(),
));
