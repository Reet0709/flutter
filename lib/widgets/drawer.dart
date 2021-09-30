import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.google.com/imgres?imgurl=https%3A%2F%2Fmiro.medium.com%2Ffit%2Fc%2F1360%2F1360%2F1*zPPDgB9P0UOLwAeajP8iFw.jpeg&imgrefurl=https%3A%2F%2Fhritikaa9.medium.com%2Fabout&tbnid=fDBgNPhd9Z4QxM&vet=12ahUKEwiHn8eu_abzAhXG1XMBHUsGBy8QMygAegQIARBT..i&docid=_4fhxCGwNh8I7M&w=1360&h=1360&itg=1&q=hritika%20medium&ved=2ahUKEwiHn8eu_abzAhXG1XMBHUsGBy8QMygAegQIARBT";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Hritika"),
                accountEmail: Text("abc@gmail.com"),
                //      currentAccountPicture: Image.network(imageUrl),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
