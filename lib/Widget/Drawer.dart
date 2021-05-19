import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imgurl="https://avatars.githubusercontent.com/u/46190988?v=4";
    String _email="ajinkyanarkhede7@gmail.com";
    String Name="Ajinkya Narkhede";
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                margin: EdgeInsets.zero,
                accountEmail: Text(_email,),
                accountName: Text(Name),//,style: TextStyle(color: Colors.black)
                currentAccountPicture: CircleAvatar(
                  backgroundImage:NetworkImage(imgurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text("Home",style: TextStyle(fontSize: 20,color: Colors.white),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("Profile",style: TextStyle(fontSize: 20,color: Colors.white),),
            ),ListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
                color: Colors.white,
              ),
              title: Text("Email me",style: TextStyle(fontSize: 20,color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }

}
