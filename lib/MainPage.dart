import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Map<String, String> data;
  String username;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (data == null) {
      data = ModalRoute.of(context).settings.arguments;
      username = data["varuser"];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Main ",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Page",
              style: TextStyle(color: Colors.orange),
            )
          ],
        ),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/2.png"),
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Selamat Datang Kembali",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(username,
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
