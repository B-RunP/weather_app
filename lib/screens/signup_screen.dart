// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:myapp/screens/signin_screen.dart';
// import 'package:myapp/screens/home_screen.dart';

// class SignupScreen extends StatefulWidget {
//   _SignupScreenState createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   TextEditingController _userNameController = TextEditingController();
//   TextEditingController _userEmailController = TextEditingController();
//   TextEditingController _userPasswordController = TextEditingController();

//   bool hidePass = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Sign Up'),
//         ),
//         body: SingleChildScrollView(
//             child: Column(children: [
//           SizedBox(height: 20),
//           Text("Let's Get Started", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
//           Text(
//             'Creat an account to Q alure to get all Leatures',
//             style: TextStyle(color: Colors.black.withOpacity(0.5)),
//           ),
//           SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//             child: TextFormField(
//                 controller: _userNameController,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   prefixIcon: Icon(Icons.person_outline, size: 20),
//                   // labelText: "Username",
//                   hintText: "Masukan Username",
//                 )),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//             child: TextFormField(
//                 controller: _userEmailController,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   prefixIcon: Icon(Icons.mail_outline_rounded, size: 20),
//                   // labelText: "Username",
//                   hintText: "Masukan Email",
//                 )),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//             child: TextFormField(
//                 controller: _userPasswordController,
//                 obscureText: hidePass,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   prefixIcon: Icon(Icons.lock_open_outlined, size: 20),
//                   // labelText: "Username",
//                   hintText: "Masukan Password",
//                 )),
//           ),
//           SizedBox(height: 20),
//           SizedBox(
//             width: 250,
//             height: 50,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//               ),
//               onPressed: () async {
//                 try {
//                   FirebaseAuth.instance.createUserWithEmailAndPassword(email: _userEmailController.text, password: _userPasswordController.text);
//                   Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomeScreen()));
//                 } on FirebaseAuthException catch (error) {
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message.toString())));
//                 }
//               },
//               child: Text('Create'),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Already have an account?'),
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
//                 },
//                 child: Text(
//                   "Login here",
//                 ),
//               ),
//             ],
//           ),
//         ])));
//   }
// }
