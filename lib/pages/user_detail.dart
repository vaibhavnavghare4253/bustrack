import 'dart:developer';
import 'package:bus_track/pages/interpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';



class off extends StatefulWidget {
  const off({super.key});

  @override
  offState createState() => offState();
}

class offState extends State<off> {
  final nameControl= TextEditingController();
  final emailControl= TextEditingController();
  final passControl= TextEditingController();
  final mobileControl= TextEditingController();
  final prnControl= TextEditingController();
  final List<String> items = [
    'Beed Bypass',
    'Railway Station',
    'Vits',
    'kranti chowk'
  ];
  bool isLogin = false;
  String email = '';
  String password = '';
  String username = '';
  String? selectedValue;

  // add_data(String name, int mobile, int prn, String email, String password )
  // async{
  //   if(password=="" || mobile==0 || prn ==0 || name=="" || email==""){
  //     log("please enter the field");
  //   }
  //   else{
  //     // FirebaseFirestore.instance.collection("users").doc(prn).set({
  //       "Name":name,
  //       "E-mail":email,
  //       "Password":password,
  //       "PRN":prn,
  //       "Mobile ":mobile,
  //
  //     }).then((value){
  //       log("data inserted");
  //     });
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    AlertDialog alert;
    return Scaffold(
      appBar: AppBar(
        title: const Text('BusTrack'),
      ),
      body: Form(
        child: Container(
          // mainAxisAlignment: MainAxisAlignment.center,
          margin: const EdgeInsets.all(20),

            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            if (!isLogin)
               TextFormField(
                 controller: nameControl,
          key: const ValueKey('username'),
      decoration: const InputDecoration(hintText: "Enter name"),
      validator: (value) {
        if (value == null || value.isEmpty || value.length < 3) {
          return 'Name is too short';
        }
        return null;
      },
      onSaved: (value) {
        username = value!;
      },
    ),
    TextFormField(
      controller: prnControl,
      key: const ValueKey('prn_number'),
      decoration: const InputDecoration(hintText: "Enter PRN number"),
      validator: (value) {
        if (value == null || value.isEmpty || value.length < 3) {
          return 'Invalid PRN';
        }
        return null;
      },
      onSaved: (value) {
        // Save PRN number if needed
      },
    ),
    TextFormField(
      controller: mobileControl,
      key: const ValueKey('mobile_number'),
      decoration: const InputDecoration(hintText: "Enter Mobile number"),
      validator: (value) {
        if (value == null || value.isEmpty || value.length < 3) {
          return 'Invalid Mobile number';
        }
        return null;
      },
      onSaved: (value) {
        // Save Mobile number if needed
      },
    ),

    TextFormField(
      controller: emailControl,
    key: const ValueKey('email'),
    decoration: const InputDecoration(hintText: "Enter Email"),
    validator: (value) {
    if (value == null || !value.contains('@')) {
    return 'Invalid Email';
    }
    return null;
    },
    onSaved: (value) {
    email = value!;
    },
    ),
    TextFormField(
      controller: passControl,
    obscureText: true,
    key: const ValueKey('password'),
    decoration: const InputDecoration(hintText: "Enter Password"),
    validator: (value) {
    if (value == null || value.isEmpty || value.length < 6) {
    return 'Password is too short';
    }
    return null;
    },
    onSaved: (value) {
    password = value!;
    },
    ),
    Column(
      children: [
        DropdownButton2<String>(
                isExpanded: true,

                hint: Text(
                  'Select Bus Stop',
                  style: TextStyle(
                    fontSize: 18,
                    // height: 60,

                    color: Theme
                        .of(context)
                        .hintColor,
                  ),
                ),
                items: items
                    .map((String item) =>
                    DropdownMenuItem<String>(
                      value: item,

                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ))
                    .toList(),
                value: selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 80,
                  width: 240,
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                ),
              ),
      ],
    ),

         SizedBox(height: 50),
         ElevatedButton(
       onPressed: ()
           {
             CollectionReference Collref = FirebaseFirestore.instance.collection('users');
             Collref.add(
               {
                 'Name': nameControl.text,

                 'E-mail': emailControl.text,
                 'Password': passControl.text,
                 'Mobile': mobileControl.text,
                 'PRN': prnControl.text,

               }

             );
             Navigator.pushReplacement(
               context,
               MaterialPageRoute(builder: (context) => const Tryoff()),
             );

           }, child: const Text('Register'),
     )


     // OutlinedButton(
     //
     //   onPressed: () {
     //     add_data()
     //
     //     Navigator.of(context).pop();
     //     Navigator.push(
     //     context,
     //  MaterialPageRoute(
     //  builder: (context) => Tryoff()),
     //  );
     //  },
     //    style: OutlinedButton.styleFrom(
     //      foregroundColor: Colors.white,
     //      side: const BorderSide(
     //          color: Colors.orange, width: 4),
     //      padding: const EdgeInsets.symmetric(
     //          horizontal: 20, vertical: 20),
     //      minimumSize: Size(200, 50),
     //      maximumSize: Size(200, 70),
     //    ),
     //    child: const Text(
     //      'Register',
     //      style: TextStyle(
     //        fontSize: 25,
     //        fontWeight: FontWeight.bold,
     //        color: Colors.orange,
     //      ),
     //    ),
     //  ),

    ]
    ),
    ),
    ),
    );

      }

  }




