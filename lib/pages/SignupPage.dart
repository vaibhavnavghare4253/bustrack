
import 'package:bus_track/pages/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          "Welcome Back",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text("Enter your credential to login"),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none
              ),
              fillColor: Colors.purple.withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.person)),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Colors.purple.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.password),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
          },
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Colors.purple,
          ),
          child: const Text(
            "Login",
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }

  _forgotPassword(context) {
    return TextButton(
      onPressed: () {},
      child: const Text("Forgot password?",
        style: TextStyle(color: Colors.purple),
      ),
    );
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have an account? "),
        TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
            },
            child: const Text("Sign Up", style: TextStyle(color: Colors.purple),)
        )
      ],
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:form_field_validator/form_field_validator.dart';
// import 'package:flutter/foundation.dart';
//
// class Register extends StatefulWidget {
//   const Register({Key? key}) : super(key: key);
//
//   @override
//   State<Register> createState() => _RegisterState();
// }
//
// class _RegisterState extends State<Register> {
//   Map userData = {};
//   final _formkey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('register'),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Form(
//                 key: _formkey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.only(top: 20.0),
//                       child: Center(
//                         child: Container(
//                           width: 200,
//                           height: 150,
//                           //decoration: BoxDecoration(
//                           //borderRadius: BorderRadius.circular(40),
//                           //border: Border.all(color: Colors.blueGrey)),
//                           child: Image.asset('assets/logo.png'),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: TextFormField(
//                         // validator: ((value) {
//                         // if (value == null || value.isEmpty) {
//                         //	 return 'please enter some text';
//                         // } else if (value.length < 5) {
//                         //	 return 'Enter atleast 5 Charecter';
//                         // }
//
//                         // return null;
//                         // }),
//                         validator: MultiValidator([
//                           RequiredValidator(errorText: 'Enter first named'),
//                           MinLengthValidator(3,
//                               errorText: 'Minimum 3 charecter filled name'),
//                         ]),
//
//                         decoration: InputDecoration(
//                             hintText: 'Enter first Name',
//                             labelText: 'first named',
//                             prefixIcon: Icon(
//                               Icons.person,
//                               color: Colors.green,
//                             ),
//                             errorStyle: TextStyle(fontSize: 18.0),
//                             border: OutlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.red),
//                                 borderRadius:
//                                 BorderRadius.all(Radius.circular(9.0)))),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: TextFormField(
//                         validator: MultiValidator([
//                           RequiredValidator(errorText: 'Enter last named'),
//                           MinLengthValidator(3,
//                               errorText:
//                               'Last name should be atleast 3 charater'),
//                         ]),
//                         decoration: InputDecoration(
//                             hintText: 'Enter last Name',
//                             labelText: 'Last named',
//                             prefixIcon: Icon(
//                               Icons.person,
//                               color: Colors.grey,
//                             ),
//                             errorStyle: TextStyle(fontSize: 18.0),
//                             border: OutlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.red),
//                                 borderRadius:
//                                 BorderRadius.all(Radius.circular(9.0)))),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: TextFormField(
//                         validator: MultiValidator([
//                           RequiredValidator(errorText: 'Enter email address'),
//                           EmailValidator(
//                               errorText: 'Please correct email filled'),
//                         ]),
//                         decoration: InputDecoration(
//                             hintText: 'Email',
//                             labelText: 'Email',
//                             prefixIcon: Icon(
//                               Icons.email,
//                               color: Colors.lightBlue,
//                             ),
//                             errorStyle: TextStyle(fontSize: 18.0),
//                             border: OutlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.red),
//                                 borderRadius:
//                                 BorderRadius.all(Radius.circular(9.0)))),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: TextFormField(
//                         validator: MultiValidator([
//                           RequiredValidator(errorText: 'Enter mobile number'),
//                           PatternValidator(r'(^[0,9]{10}$)',
//                               errorText: 'enter vaid mobile number'),
//                         ]),
//                         decoration: InputDecoration(
//                             hintText: 'Mobile',
//                             labelText: 'Mobile',
//                             prefixIcon: Icon(
//                               Icons.phone,
//                               color: Colors.grey,
//                             ),
//                             border: OutlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.red),
//                                 borderRadius:
//                                 BorderRadius.all(Radius.circular(9)))),
//                       ),
//                     ),
//                     Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(18.0),
//                           child: Container(
//                             // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
//                             child: RaisedButton(
//                               child: Text(
//                                 'Register',
//                                 style: TextStyle(color: Colors.white, fontSize: 22),
//                               ),
//                               onPressed: () {
//                                 if (_formkey.currentState!.validate()) {
//                                   print('form submiitted');
//                                 }
//                               },
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(30)),
//                               color: Colors.blue,
//                             ),
//
//                             width: MediaQuery.of(context).size.width,
//
//                             height: 50,
//                           ),
//                         )),
//                     Center(
//                       child: Padding(
//                         padding: EdgeInsets.only(top: 20),
//                         child: Center(
//                           child: Text(
//                             'Or Sign Up Using',
//                             style: TextStyle(fontSize: 18, color: Colors.black),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Center(
//                       child: Padding(
//                         padding: EdgeInsets.only(top: 20, left: 90),
//                         child: Row(
//                           children: [
//                             Container(
//                                 height: 40,
//                                 width: 40,
//                                 child: Image.asset(
//                                   'assets/google.png',
//                                   fit: BoxFit.cover,
//                                 )),
//                             Container(
//                               height: 70,
//                               width: 70,
//                               child: Image.asset(
//                                 'assets/vishal.png',
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Container(
//                               height: 40,
//                               width: 40,
//                               child: Image.asset(
//                                 'assets/google.png',
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Center(
//                       child: Container(
//                         padding: EdgeInsets.only(top: 60),
//                         child: Text(
//                           'SIGN IN',
//                           style: TextStyle(
//                               fontSize: 20, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     )
//                   ],
//                 )),
//           ),
//         ));
//   }
// }
