import 'package:flutter/material.dart';

class interpage extends StatelessWidget {
  const interpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Drawer',
          ),
          backgroundColor: const Color(0xff764abc),
        ),

        drawer: Drawer(
          child:ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: const Text('Page 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.bus_alert,
                ),
                title: const Text('Page 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

    )
    );


  }

  _bus1(contex)
  {
    return TextButton(
      onPressed: () {

      },

      child: Text('hello user'),



    );
  }

}