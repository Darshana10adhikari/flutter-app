import 'package:flutter/material.dart';

class BusInfoScreen extends StatefulWidget {
  @override
  State<BusInfoScreen> createState() => _BusInfoScreenState();
}

class _BusInfoScreenState extends State<BusInfoScreen> {
  @override
  TextEditingController busModelTextEditingController = TextEditingController();
  TextEditingController busNumberTextEditingController =
      TextEditingController();
  TextEditingController busColorTextEditingController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.all(70.0),
                child: Image.asset("images/logo1.jpg"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Write Bus Details",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                controller: busModelTextEditingController,
                style: const TextStyle(color: Colors.cyan),
                decoration: const InputDecoration(
                  labelText: "Bus Model",
                  hintText: "Bus Model",
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
                controller: busNumberTextEditingController,
                style: const TextStyle(color: Colors.cyan),
                decoration: const InputDecoration(
                  labelText: "Bus Number",
                  hintText: "Bus Number",
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
                controller: busColorTextEditingController,
                style: const TextStyle(color: Colors.cyan),
                decoration: const InputDecoration(
                  labelText: "Bus Color",
                  hintText: "Bus Color",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((c) => BusInfoScreen())));
                },
                style:
                    ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),
                child: const Text(
                  "Save Now",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
