
import 'package:flutter/material.dart';

class MiCardApp extends StatelessWidget {
  const MiCardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('images/me.jpg'),
                ),
                const Text(
                  'Riski Ilyas',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'BukitBulan'
                  ),
                ),
                Text(
                  'Mobile App Developer',
                  style: TextStyle(
                    color: Colors.teal.shade50,
                    letterSpacing: 2.5,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 150,
                  child: Divider(
                    thickness: 2,
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: ListTile(
                      leading: const Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+6285260547656',
                        style: TextStyle(
                          color: Colors.teal.shade900
                        ),
                      ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: ListTile(
                    leading: const Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'riskiilyas03@gmail.com',
                      style: TextStyle(
                          color: Colors.teal.shade900
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: ListTile(
                    leading: const Icon(
                      Icons.web,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'www.riskiilyas.com',
                      style: TextStyle(
                          color: Colors.teal.shade900
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
