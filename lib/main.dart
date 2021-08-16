import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: UserPanel(),
    ));

class UserPanel extends StatefulWidget {
  const UserPanel({Key? key}) : super(key: key);

  @override
  _UserPanelState createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('My Text App bar'),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top: 30)),
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/1.png'),
                  radius: 50,
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  children: [
                    Icon(
                      Icons.mail_outline,
                      size: 25,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      'admin@flutter.com',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  'Count: $_count',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit_rounded),
        backgroundColor: Colors.amber,
        onPressed: () {
          setState(() {
            _count++;
          });
        },
      ),
    );
  }
}
