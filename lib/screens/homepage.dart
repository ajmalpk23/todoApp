import 'package:flutter/material.dart';
import 'package:todo_app/widget.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          color: Color(0XFFF6F6F6),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 32.0,
                    ),
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  TaskCardRWidget(
                    title: "Get Started",
                    desc:
                        "Hello user! Welcome to my todo_app.this is the defalut task that you can edit or delete to start using this app",
                  ),
                  TaskCardRWidget()
                ],
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(color: Color(0XFF7349FE),
                  borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Image(image: AssetImage('assets/images/add_icon.png'),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
