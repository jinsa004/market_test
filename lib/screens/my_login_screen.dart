import 'package:flutter/material.dart';
import 'package:market/screens/my_login_screen_form.dart';

class MyLoginScreen extends StatelessWidget {
  const MyLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
        children: [
          MyLoginScreenForm(text: "Email"),
          SizedBox(height: 10),
          MyLoginScreenForm(text: "Password"),
          SizedBox(height: 10),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
              child: Text("Login"))
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xff3860c4),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Login",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
