import 'package:flutter/material.dart';
// import '../dbfunctions.dart';


class Registrar extends StatefulWidget {
  const Registrar({super.key});

  @override
  _RegistrarState createState() => _RegistrarState();
}

class _RegistrarState extends State<Registrar> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = false; // Track login/signup state
  String email = '';
  String password = '';
  String username = ''; // Include username for signup

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BusTrack'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Username field (conditional for signup only)
              !isLogin
                  ? TextFormField(
                key: const ValueKey('username'),
                decoration: const InputDecoration(hintText: "Enter Name"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  } else if (value.length < 3) {
                    return 'Name must be at least 3 characters';
                  }
                  return null;
                },
                onSaved: (newValue) => setState(() => username = newValue!),
              )
                  : Container(),

              TextFormField(
                key: const ValueKey('email'),
                decoration: const InputDecoration(hintText: "Enter Email"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email address';
                  } else if (!value.contains('@')) {
                    return 'Invalid email format';
                  }
                  return null;
                },
                onSaved: (newValue) => setState(() => email = newValue!),
              ),

              TextFormField(
                obscureText: true,
                key: const ValueKey('password'),
                decoration: const InputDecoration(hintText: "Enter Password"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
                onSaved: (newValue) => setState(() => password = newValue!),
              ),

              const SizedBox(
                height: 10,
              ),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () async {
                    if (!_formKey.currentState!.validate()) {
                      return; // Don't proceed if form is invalid
                    }

                    _formKey.currentState!.save();
                  },


                  child: isLogin ? const Text('Login') : const Text('Signup'),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              TextButton(
                onPressed: () => setState(() => isLogin = !isLogin),
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

  // Assuming `createUser` is defined in `dbfunctions.dart`
  Future<void> createUser(String username, String email, String password) async {}
    // Implement user creation logic using Firebase (replace with your code)
    }
