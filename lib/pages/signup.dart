import 'package:flutter/material.dart';
import '../components/login_auth.dart';
import '../dbfunctions.dart';
import 'interpage.dart';


class Registar extends StatefulWidget {
  const Registar({super.key});

  @override
  _RegistarState createState() => _RegistarState();
}

class _RegistarState extends State<Registar> {
  final _formkey = GlobalKey<FormState>();
  bool isLogin = false;
  String email = '';
  String password = '';
  String username = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BusTrack'),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin
                  ? TextFormField(
                key: const ValueKey('username'),
                decoration: const InputDecoration(hintText: "Enter name"),
                validator: (value) {
                  if (value.toString().length < 3) {
                    return 'name is so small';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    username = value!;
                  });
                },
              )
              : Container(),
              TextFormField(
                key: const ValueKey('prn_number'),
                decoration: const InputDecoration(hintText: "Enter PRN number"),
                validator: (value) {
                  if (value.toString().length < 3) {
                    return 'Invalid PRN';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    // username = value!;
                  });
                },
              ),
              TextFormField(
                key: const ValueKey('mobile_number'),
                decoration: const InputDecoration(hintText: "Enter Mobile number"),
                validator: (value) {
                  if (value.toString().length < 3) {
                    return 'Invalid Mobile number';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    // username = value!;
                  });
                },
              ),
              TextFormField(
                key: const ValueKey('bus_stop'),
                decoration: const InputDecoration(hintText: "Enter bus stop name"),
                validator: (value) {
                  if (value.toString().length < 3) {
                    return 'Invalid bus stop';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    // username = value!;
                  });
                },
              ),

                  // : Container(),
              TextFormField(
                key: const ValueKey('email'),
                decoration: const InputDecoration(hintText: "Enter Email"),
                validator: (value) {
                  if (!(value.toString().contains('@'))) {
                    return 'Invalid Email';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key: const ValueKey('password'),
                decoration: const InputDecoration(hintText: "Enter Password"),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return 'Password is so small';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();
                        isLogin
                            ? signin(email, password)
                            : signup(email, password);

                      }
                    },
                  // child: ElevatedButton(
                  //     onPressed: () {
                  //       if (_formkey.currentState!.validate()) {
                  //         _formkey.currentState!.save();
                  //         // Navigate to the interpage.dart route
                  //         Navigator.push(
                  //           context,
                  //           MaterialPageRoute(builder: (context) => const Tryoff()),
                  //         );
                  //         isLogin
                  //             ? signin(email, password)
                  //             : signup(email, password);
                  //       }
                  //     },

                      child: isLogin
                          ? const Text('Login')
                          : const Text('Signup'))),


              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {

                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: isLogin
                      ? const Text("Don't have an account? Signup")
                      : const Text('Already Signed Up? Login')
              )
            ],
          ),
        ),
      ),
    );
  }
}//

