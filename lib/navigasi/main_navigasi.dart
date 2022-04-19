import 'package:flutter/material.dart';

class MainNavigasi extends StatefulWidget {
  const MainNavigasi({Key? key}) : super(key: key);

  @override
  State<MainNavigasi> createState() => _MainNavigasiState();
}

class _MainNavigasiState extends State<MainNavigasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: ElevatedButton(
                  child: Text(
                    "Profile",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    // change background button
                    primary: Colors.blueAccent,
                    // change splash button color
                    onPrimary: Colors.blue[700],
                    shadowColor: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
              ),
              Container(
                child: ElevatedButton(
                  child: Text(
                    "Food Gallery",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    // change background button
                    primary: Colors.blueAccent,
                    // change splash button color
                    onPrimary: Colors.blue[700],
                    shadowColor: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
