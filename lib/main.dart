import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  width: 70.0,
                  child: Image.asset("assets/chef.png"),
                ),
              ),
              Text(
                "Rats Chat",
                  style: TextStyle(fontSize: 40.0),
              )
            ],
          ),
            SizedBox(
              height: 50.0,
            ),
            CustomButton(
                callback:() {},
                text:"Log In",
            ),

            CustomButton(
              callback:() {},
              text:"Register",
            )
        ],
      )
    );
  }


}
class CustomButton extends StatelessWidget{
  final  VoidCallback callback;
  final String text;

  const CustomButton({Key key,this.text,this.callback});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: callback,
          minWidth: 200.0,
          height: 45.0,
          child: Text(text),
        ),
      )
    );
  }

}