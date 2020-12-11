import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtuser = TextEditingController();
  TextEditingController txtpass = TextEditingController();
  String username = "Shoqibul";
  String password = "123456";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            Text(
              "Page",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        elevation: 0.0,
      ),
      body: Builder(builder: (context) {
        return Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/1.png"),
                  TextFormField(
                    controller: txtuser,
                    autofocus: false,
                    validator: (value) =>
                        value.isEmpty ? "Username Tidak Boleh Kosong" : null,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: "Username",
                      hintText: "Masukkan Username",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: txtpass,
                    autofocus: false,
                    validator: (value) =>
                        value.isEmpty ? "Password Tidak Boleh Kosong" : null,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.vpn_key),
                      labelText: "Password",
                      hintText: "Masukkan Password",
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        color: Colors.orange,
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState.validate() &&
                              txtuser.text == username &&
                              txtpass.text == password) {
                            Navigator.pushNamed(context, "/mainpage",
                                arguments: {
                                  "varuser": txtuser.text,
                                });
                          } else if (txtuser.text != username &&
                              _formKey.currentState.validate()) {
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: const Text('Username Salah'),
                              duration: const Duration(seconds: 3),
                            ));
                          } else if (txtpass.text != password &&
                              _formKey.currentState.validate()) {
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: const Text('Password Salah'),
                              duration: const Duration(seconds: 3),
                            ));
                          }
                        }),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
      backgroundColor: Colors.white,
    );
  }
}
