import 'package:flutter/material.dart';
import 'track.dart';
import 'interpage.dart';
import 'route_page.dart'; // Update the import to match the new route page file

class BusDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bus and driver details
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/userimg.jpg'), // Ensure the image path is correct
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bus Number: MH12AB1234',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Driver: John Doe',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Mobile: 9876543210',
                      style: TextStyle(fontSize: 16),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        // Navigate to the RoutePage
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RoutePage()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.purpleAccent,
                        side: const BorderSide(color: Colors.purple, width: 4),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        minimumSize: const Size(230, 30),
                        maximumSize: const Size(1500, 50),
                      ),
                      child: const Text(
                        'Route',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        // Navigate to the GoogleMapPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const GoogleMapPage()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.purpleAccent,
                        side: const BorderSide(color: Colors.purple, width: 4),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        minimumSize: const Size(230, 30),
                        maximumSize: const Size(1500, 50),
                      ),
                      child: const Text(
                        'See Location',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            // Bus route details


            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/userimg.jpg'), // Ensure the image path is correct
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bus Number: MH12AB1234',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Driver: John Doe',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Mobile: 9876543210',
                      style: TextStyle(fontSize: 16),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        // Navigate to the RoutePage
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RoutePage()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.purpleAccent,
                        side: const BorderSide(color: Colors.purple, width: 4),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        minimumSize: const Size(230, 30),
                        maximumSize: const Size(1500, 50),
                      ),
                      child: const Text(
                        'Route',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        // Navigate to the GoogleMapPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const GoogleMapPage()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.purpleAccent,
                        side: const BorderSide(color: Colors.purple, width: 4),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        minimumSize: const Size(230, 30),
                        maximumSize: const Size(1500, 50),
                      ),
                      child: const Text(
                        'See Location',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            // Bus route details
            //3rd bus


            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/userimg.jpg'), // Ensure the image path is correct
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bus Number: MH12AB1234',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Driver: John Doe',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Mobile: 9876543210',
                      style: TextStyle(fontSize: 16),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        // Navigate to the RoutePage
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RoutePage()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.purpleAccent,
                        side: const BorderSide(color: Colors.purple, width: 4),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        minimumSize: const Size(230, 30),
                        maximumSize: const Size(1500, 50),
                      ),
                      child: const Text(
                        'Route',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        // Navigate to the GoogleMapPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const GoogleMapPage()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.purpleAccent,
                        side: const BorderSide(color: Colors.purple, width: 4),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        minimumSize: const Size(230, 30),
                        maximumSize: const Size(1500, 50),
                      ),
                      child: const Text(
                        'See Location',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            // Bus route details
            //5th bus

            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/userimg.jpg'), // Ensure the image path is correct
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bus Number: MH12AB1234',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Driver: John Doe',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Mobile: 9876543210',
                      style: TextStyle(fontSize: 16),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        // Navigate to the RoutePage
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RoutePage()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.purpleAccent,
                        side: const BorderSide(color: Colors.purple, width: 4),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        minimumSize: const Size(230, 30),
                        maximumSize: const Size(1500, 50),
                      ),
                      child: const Text(
                        'Route',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        // Navigate to the GoogleMapPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const GoogleMapPage()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.purpleAccent,
                        side: const BorderSide(color: Colors.purple, width: 4),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        minimumSize: const Size(230, 30),
                        maximumSize: const Size(1500, 50),
                      ),
                      child: const Text(
                        'See Location',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            // Bus route details
            //5th bus


          ],
        ),
      ),
    );
  }
}
