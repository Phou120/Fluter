import 'package:flutter/material.dart';
import 'package:learn_flutter/Drawer_Menu.dart';
import 'package:learn_flutter/HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;

  Widget Logo() {
    return Image.asset(
      "images/logo.png",
      fit: BoxFit.cover,
      width: 160,
      height: 160,
    );
  }

  Widget TextShop() {
    return Text(
      'BCSP6B Mart',
      style: TextStyle(
        color: Colors.red.shade600,
        fontSize: 40,
        fontWeight: FontWeight.bold,
        fontFamily: "Lobster",
      ),
    );
  }

  Widget TextFieldUsername() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person, color: Colors.blue),
          hintText: "User name",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }

  Widget TextFieldPassword() {
    return TextField(
      obscureText: !_isPasswordVisible,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock, color: Colors.blue),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        filled: true,
        fillColor: Colors.white,
        suffixIcon: IconButton(
          icon: Icon(
            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.red,
          ),
          onPressed: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
        ),
      ),
    );
  }

  Widget TextLoginToGoogleAccount() {
    return TextButton(
      onPressed: () {},
      child: Text('Login with Google', style: TextStyle(fontSize: 16)),
    );
  }

  Widget Button() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Drawer_Menu()),
            // );

            Navigator.of(context).pop();
            MaterialPageRoute route = MaterialPageRoute(
              builder: (c) => Drawer_Menu(),
            );
            Navigator.of(context).push(route);
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          child: Text("Log In", style: TextStyle(color: Colors.white)),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: Text("Sign Up"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Colors.white, Colors.green],
            radius: 1.0,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Logo(),
                SizedBox(height: 20),
                TextShop(),
                SizedBox(height: 20),
                TextFieldUsername(),
                SizedBox(height: 10),
                TextFieldPassword(),
                SizedBox(height: 20),
                Button(),
                SizedBox(height: 20),
                // TextLoginToGoogleAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
