import 'package:blackhole/Messenger/Screens/chat.dart';
import 'package:blackhole/Messenger/all%20Chat%20Functions/rooms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Password!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'Enter Password!',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 0.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                ),
                onSubmitted: (value) {
                  if (value == "special") {
                    Navigator.pushReplacement(context, CupertinoPageRoute(builder: (_) => RoomsPage()));
                  } else {
                    print("Wrong password!");
                  }
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
