//import 'package:driver_side/authentication/bus_info_screen.dart';
import 'package:driver_side/authentication/login_screen.dart';
//import 'package:driver_side/global/global.dart';
import 'package:driver_side/widgets/progress_dialog.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
//import 'package:firebase_core/firebase_core.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  validateForm() {
    if (nameTextEditingController.text.length < 3) {
      Fluttertoast.showToast(msg: "name must be altleast 3 characters");
    } else if (!emailTextEditingController.text.contains("@")) {
      Fluttertoast.showToast(msg: "email address is not valid");
    } else if (phoneTextEditingController.text.isEmpty) {
      Fluttertoast.showToast(msg: "phone number is mandatory");
    } else if (passwordTextEditingController.text.length < 6) {
      Fluttertoast.showToast(msg: "password must be atleast 6 characters");
    } //else {
    //saveDriverInfoNow();
    //}
  }

  //saveDriverInfoNow() async {
  //showDialog(
  //context: context,
  //barrierDismissible: false,
  //builder: (BuildContext c) {
  // return ProgressDialog(
  // message: "Processing.please wait...",
  //);
  //});
  //final User? firebaseUser = (await fAuth
  // .createUserWithEmailAndPassword(
  //   email: emailTextEditingController.text.trim(),
  // password: passwordTextEditingController.text.trim())
  //.catchError((msg) {
  //Navigator.pop(context);
  //Fluttertoast.showToast(msg: "Error:" + msg.toString());
  //}))
  //.user;

  //if (firebaseUser != null) {
  // ignore: unused_local_variable
  // Map driverMap = {
  // "id": firebaseUser.uid,
  //"name": nameTextEditingController.text.trim(),
  //"email": emailTextEditingController.text.trim(),
  //"phone": phoneTextEditingController.text.trim()
  //};
  //} else {
  //Navigator.pop(context);
  //Fluttertoast.showToast(msg: "Acoount has not been created.");
  //}
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(70.0),
                child: Image.asset("images/logo1.jpg"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Register as a Driver",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                controller: nameTextEditingController,
                style: const TextStyle(color: Colors.cyan),
                decoration: const InputDecoration(
                  labelText: "name",
                  hintText: "name",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
              TextField(
                controller: emailTextEditingController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.cyan),
                decoration: const InputDecoration(
                  labelText: "email",
                  hintText: "email",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
              TextField(
                controller: phoneTextEditingController,
                keyboardType: TextInputType.phone,
                style: const TextStyle(color: Colors.cyan),
                decoration: const InputDecoration(
                  labelText: "phone",
                  hintText: "phone",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
              TextField(
                controller: passwordTextEditingController,
                keyboardType: TextInputType.text,
                obscureText: true,
                style: const TextStyle(color: Colors.cyan),
                decoration: const InputDecoration(
                  labelText: "password",
                  hintText: "password",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  validateForm();
                },
                style:
                    ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),
                child: const Text(
                  "Create Account",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                child: const Text(
                  "Already have an account? Login here",
                  style: TextStyle(color: Colors.blueGrey),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((c) => LoginScreen())));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
