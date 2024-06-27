
import 'package:bus_track/pages/user_detail.dart';
import 'package:flutter/material.dart';
import '../components/login_auth.dart'; // Ensure these functions are imported correctly
import 'interpage.dart'; // Import the home page

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
  String route='select route';


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
              if (!isLogin)
                TextFormField(
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
              // TextFormField(
              //   key: const ValueKey('prn_number'),
              //   decoration: const InputDecoration(hintText: "Enter PRN number"),
              //   validator: (value) {
              //     if (value == null || value.isEmpty || value.length < 3) {
              //       return 'Invalid PRN';
              //     }
              //     return null;
              //   },
              //   onSaved: (value) {
              //     // Save PRN number if needed
              //   },
              // ),
              // TextFormField(
              //   key: const ValueKey('mobile_number'),
              //   decoration: const InputDecoration(hintText: "Enter Mobile number"),
              //   validator: (value) {
              //     if (value == null || value.isEmpty || value.length < 3) {
              //       return 'Invalid Mobile number';
              //     }
              //     return null;
              //   },
              //   onSaved: (value) {
              //     // Save Mobile number if needed
              //   },
              // ),
    //
    // TextFormField(
    //             key: const ValueKey('bus_stop'),
    //             decoration: const InputDecoration(hintText: "Enter bus stop name"),
    //             validator: (value) {
    //               if (value == null || value.isEmpty || value.length < 3) {
    //                 return 'Invalid bus stop';
    //               }
    //               return null;
    //             },
    //             onSaved: (value) {
    //               // Save bus stop name if needed
    //             },
    //           ),
              TextFormField(
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
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formkey.currentState!.validate()) {
                      _formkey.currentState!.save();
                      // isLogin
                      //     ? signin(email, password)
                      //     : signup((email, password) as String,
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(builder: (context) => const off())
                      //     ) as String
                      //      );

                      // try {
                        if
                        (isLogin)  {
                          await signin(email, password);
                        } else {
                          await signup(email, password);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const off()),
                          );
                        }

                      // } catch (e) {
                      //   // Handle errors such as showing a Snackbar or AlertDialog
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(content: Text('Error: $e')),
                      //   );
                      // }
                    }
                  },

                  child: isLogin ? const Text('Login') : const Text('Signup'),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                child: isLogin
                    ? const Text("Don't have an account? Signup")
                    : const Text('Already Signed Up? Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
