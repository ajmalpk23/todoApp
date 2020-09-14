import 'package:flutter/material.dart';


class TaskCardRWidget extends StatelessWidget {
final String title;
final String desc;
TaskCardRWidget ({this.title,this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ??"(Unknown Task)",
            style: TextStyle(
              color: Color(0XFF211551),
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0
            ),
            child: Text(
              desc ??'No description adedd',
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0XFF86829D),
                height: 1.5,

              ),
            ),
          )
        ],
      ),
    );
  }
}
