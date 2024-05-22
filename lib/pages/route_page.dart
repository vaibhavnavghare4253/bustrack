import 'package:flutter/material.dart';

class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Route Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.lightBlue, // Set the desired background color here
              padding: EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'BusNumber: MH 20 AS 1234', // Example bus number
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white, // Background color of the circle
                    ),
                    padding: EdgeInsets.all(5.0), // Padding inside the circle
                    child: IconButton(
                      icon: Icon(Icons.event_seat, size: 35), // Increased size
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SeatingPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.lightGreen[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Arrival Time',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Date',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Departure Time',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  RouteListItem(
                    location: 'College',
                    arrivalTime: '   Start     ',
                    departureTime: '10:15 AM',
                    distance: '20 km',
                  ),
                  RouteListItem(
                    location: 'Beed Bypass',
                    arrivalTime: '10:00 AM',
                    departureTime: '10:15 AM',
                    distance: '20 km',
                  ),
                  RouteListItem(
                    location: 'RailwayStation',
                    arrivalTime: '11:00 AM',
                    departureTime: '11:15 AM',
                    distance: '30 km',
                  ),
                  RouteListItem(
                    location: 'Baba Petrol Pump',
                    arrivalTime: '12:00 PM',
                    departureTime: '12:15 PM',
                    distance: '40 km',
                  ),
                  RouteListItem(
                    location: 'J Tower',
                    arrivalTime: '01:00 PM',
                    departureTime: '1:15 PM',
                    distance: '50 km',
                  ),
                  // Add more stops as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RouteListItem extends StatelessWidget {
  final String location;
  final String arrivalTime;
  final String departureTime;
  final String distance;

  RouteListItem({
    required this.location,
    required this.arrivalTime,
    required this.departureTime,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          arrivalTime,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(width: 10),
        Stack(
          children: [
            Container(
              width: 2,  // Thicker vertical line
              height: 80,
              color: Colors.grey.withOpacity(0.5),  // Semi-transparent color
            ),
            Positioned(
              top: 0,
              left: -5,
              child: Icon(
                Icons.circle,
                size: 12,
                color: Colors.black,  // Dark colored circle
              ),
            ),
            Positioned(
              bottom: 0,
              left: -5,
              child: Icon(
                Icons.circle,
                size: 12,
                color: Colors.black,  // Dark colored circle
              ),
            ),
          ],
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                location,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                distance,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
        Text(
          departureTime,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}

class SeatingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Seating Arrangement'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            for (int i = 0; i < 10; i++)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.event_seat, size: 45),
                  Icon(Icons.event_seat, size: 45),
                  SizedBox(width: 45), // Space for the aisle
                  Icon(Icons.event_seat, size: 45),
                  Icon(Icons.event_seat, size: 45),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  home: RoutePage(),
));
