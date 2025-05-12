import 'package:flutter/material.dart';

void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.blueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'assets/Images/uzumakinaruto.png'), 
            ),
            SizedBox(height: 16),
            Text(
              'Tejas Orke',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
           
            Row(
              children: [
                Icon(Icons.school, size: 24),
                SizedBox(width: 8),
                Text(
                  'Education:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 4),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '• Bachelor\'s Of Science in Computer Science \n'
                '• Master\'s in Computer Applications\n',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 8),
        
            Row(
              children: [
                Icon(Icons.info, size: 24),
                SizedBox(width: 8),
                Text(
                  'Information:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 4),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Currently pursuing Masters in Computer Applications '
                'from Sardar Patel Institute of Technology. '
                'Has a basic understanding of Linux operating systems '
                'and is interested in learning more about them. '
                'Passionate about DevOps and exploring its tools and methodologies.\n\n'
                'Has a medium level of knowledge in Java '
                'and data structures and algorithms. Passionate about '
                'backend development and building scalable applications.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}