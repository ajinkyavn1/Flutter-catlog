import 'package:flutter/cupertino.dart';
import 'package:frist_flutter/Pages/Routes.dart';
import 'package:flutter/material.dart';
import 'package:frist_flutter/Widget/Drawer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool change=false;
  final _formkey=GlobalKey<FormState>();
  MovetoHome(BuildContext context)async{
    if(_formkey.currentState.validate()) {
      setState(() {
        change = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homepage);
      setState(() {
        change = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


      body: SingleChildScrollView(
        reverse: true,
        child: Form(
          key: _formkey,

          child: Column(
            children: [
              SizedBox(height: 100,),
              Image.asset("assets/images/login_bg.png",fit: BoxFit.cover,alignment: Alignment.center, ),
              SizedBox(height:2,),
              Text("Welcome $name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.red),),

             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(40.0)
               ),
               margin: EdgeInsets.all(25),

               elevation:80 ,
               shadowColor: Colors.blueAccent, 
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10,horizontal:25),
                 child: Column(
                   children: [
                     TextFormField(
                       onChanged:(value)
                       {
                         name=value;
                         setState(() {
                         });
                       },
                       validator: (value){
                         if(value.isEmpty)
                           return "UserName is not Empty";
                         else
                           return null;
                       },
                       decoration: InputDecoration(
                         icon: Icon(CupertinoIcons.person_alt),
                         labelText: "Username",
                         hintText: "Enter your username",
                       ),
                     ),
                     SizedBox(height:2,),
                     TextFormField(
                       validator: (value)
                       {
                         if(value.isEmpty)
                           return "Password Not be Empty";
                         else if(value.length<8)
                           return "Password Should be greter than 8";
                         else
                           return null;
                       },
                       obscureText: true,
                       decoration: InputDecoration(
                         icon: Icon(CupertinoIcons.lock_fill),
                         labelText: "Password",
                         hintText: "Password",
                       ),
                     ),
                     SizedBox(height: 15,),
                     Text("Forgot Password? "),
                 SizedBox(
                   height: 15,
                 ),
                     Material(
                       color: Colors.deepPurple,
                       borderRadius: BorderRadius.circular(change?80:8),
                       child: InkWell(
                         onTap: ()=>MovetoHome(context),
                         child: AnimatedContainer(

                           duration: Duration(seconds: 1),
                           width: change?50:150,
                           height: 50,
                           alignment: Alignment.center,
                           child: change?Icon(Icons.done,color: Colors.white,)
                               :Text("Login",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 15,
                               fontWeight:FontWeight.bold,
                             ),),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}

