import 'package:bus_track/pages/track.dart';
import 'package:flutter/material.dart';

class Tryoff extends StatelessWidget {
  const Tryoff({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
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
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Navigate to Home
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Navigate to Settings
              },
            ),
            ListTile(
              leading: const Icon(Icons.contacts),
              title: const Text('Contact Us'),
              onTap: () {
                // Navigate to Contact Us
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
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
                            Text(
                              'hi ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 30
                              ),
                            ),
                            Text(
                              'User ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 30
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'prn:123456789',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 180,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                        topRight: Radius.circular(80),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            // Perform an action when the first button is pressed
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const GoogleMapPage()),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white, width: 4),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            minimumSize: const Size(150, 50),
                            maximumSize: const Size(200, 60),
                          ),
                          child: const Text(
                            'Map',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        OutlinedButton(
                          onPressed: () {
                            // Perform an action when the second button is pressed
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white, width: 4),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            minimumSize: const Size(150, 50),
                            maximumSize: const Size(200, 60),
                          ),
                          child: const Text(
                            'Button 2',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        OutlinedButton(
                          onPressed: () {
                            // Perform an action when the third button is pressed
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white, width: 4),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            minimumSize: const Size(150, 50),
                            maximumSize: const Size(200, 60),
                          ),
                          child: const Text(
                            'Button 3',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Positioned(
            top: 16,
            right: 16,
            child: CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage('assets/userimg.jpg'), // Ensure the image path is correct
            ),
          ),
        ],
      ),
    );
  }
}
