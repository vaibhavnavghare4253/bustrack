import 'package:bus_track/pages/Registar.dart';
import 'package:bus_track/pages/signup.dart';
import 'package:bus_track/pages/track.dart';

import 'package:bus_track/pages/interpage.dart';
import 'package:bus_track/pages/user_detail.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';




// auth credentials repeated
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDzO0YYrQuBT0eELo2vGe8d4vwaLA_TAKA',
      appId: '1:981845607190:android:fe64029ade3c6b11240637',
      projectId: 'busdata-2024',
      messagingSenderId: '981845607190',
    ),
  );
//   runApp( LoginPage());
// }
// void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      // off()
      StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder: (context,snapshot){
        if(snapshot.hasData){
          return Tryoff();
        }else{
          return Registar();
         // off();
        }
      })
      // DatabaseOptions(),
      // GoogleMapPage(),
      // Registar(),
      // MyForm(),

      // SignupPage(),
      // LoginPage(),
    );
  }
}