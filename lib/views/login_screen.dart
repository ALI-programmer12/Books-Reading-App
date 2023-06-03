import 'package:flutter/material.dart';
import 'package:login_page/views/pdf_books_screen.dart';

class loginScreen extends StatefulWidget {
  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    int i = 0;
    List<String> emails = ['ali', 'shabi', 'ibtisam', 'ahmed'];
    List<String> passwords = ['ali', 'shabi', 'ibtisam', 'ahmed'];
    void Dialog() {
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                backgroundColor: Colors.white,
                title: Text(
                  'Invalid Email or Password',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Text(
                  'Please Try Again',
                  style: TextStyle(color: Colors.black),
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'Ok');
                      },
                      child: Text(
                        'Ok',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ));
    }

    final email = TextEditingController();
    final password = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Center(
            child: Text(
          'Login Page',
          style: TextStyle(color: Colors.teal[100]),
        )),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.blueGrey[700],
                  ),
                  enabledBorder: OutlineInputBorder(),
                  hintText: "Email",
                  hintStyle: TextStyle(
                      color: Colors.blueGrey[700], fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.blueGrey[700],
                    ),
                    enabledBorder: OutlineInputBorder(),
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.blueGrey[700],
                        fontWeight: FontWeight.bold),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  while (i <= passwords.length - 1 && i <= emails.length - 1) {
                    if (email.text == emails[i] &&
                        password.text == passwords[i]) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => pdfBooks()));
                      break;
                    } else if (email.text != emails[i] &&
                        password.text != passwords[i]) {
                      i++;
                    } else {
                      Dialog();
                      break;
                    }
                  }
                  if (i == emails.length && i == passwords.length) {
                    Dialog();
                  }
                });
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Log In',
                    style: TextStyle(color: Colors.teal[100], fontSize: 20),
                  ),
                ),
                width: 110,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[900],
                    borderRadius: BorderRadius.circular(10)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
