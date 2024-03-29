import 'package:flutter/material.dart';
import '../../features/user_auth/firebase_auth_implementation/firebase_auth_services.dart';

class Header extends StatelessWidget {
  final String dynamicText;

  Header({required this.dynamicText});

  @override
  Widget build(BuildContext context) {
    if (context == null) {
      // Return a placeholder widget or handle it in a way suitable for your app
      return Container();
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo[300],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      height: 100,
      width: double.infinity,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Column(
                children: [
                  Text(
                    " $dynamicText",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'MadimiOne',
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30),
            ],
          ),
        ),
      ),
    );
  }
}