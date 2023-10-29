import 'package:flutter/material.dart';
import 'package:utsadam/dashboard.dart';

class User {
  final String name;
  final String email;
  final String profileImage;

  User(this.name, this.email, this.profileImage);
}

class profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final User user = User(
    'Adam Wirgiawan W',
    'virgiawan@gmail.com',
    'image/gambar6.jpg', // You can replace this with the actual image path.
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 63, 158),
        shadowColor: const Color.fromARGB(255, 255, 255, 255),
        title: Text('Menu Profile'),
      ),
      backgroundColor: Color.fromARGB(255, 99, 167, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(user.profileImage),
              radius: 60,
            ),
            SizedBox(height: 20),
            Text(
              user.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              user.email,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => dashboard(),
                  ),
                );
              },
              child: Text('Back Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}
