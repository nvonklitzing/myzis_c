//import 'package:flutter/material.dart';
//import 'package:path_provider/path_provider.dart';
//import 'dart:async';
//import 'dart:io';
//
//class LoginPage extends StatefulWidget {
//  LoginPage({Key key}) : super(key: key);
//
//  static const String routeName = "/LoginPage";
//
//  @override
//  _LoginPageState createState() => new _LoginPageState();
//}
//
//class _LoginPageState extends State<LoginPage> {
//  final TextEditingController _usernameController =
//  new TextEditingController();
//  final TextEditingController _passwordController =
//  new TextEditingController();
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        leading: new Container(),
//        centerTitle: true,
//        title: new Text("Login"),
//      ),
//      body: new Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          new Text(
//            "MyZIS Login",
//            style: new TextStyle(color: new Color(0xFF005A84), fontSize: 36.0),
//          ),
//          new Padding(
//            padding: new EdgeInsets.only(left: 20.0, right: 20.0),
//            child: new TextField(
//              controller: _usernameController,
//              decoration: new InputDecoration(
//                hintText: 'Username',
//              ),
//            ),
//          ),
//          new Padding(
//            padding: new EdgeInsets.only(left: 20.0, right: 20.0),
//            child: new TextField(
//              controller: _passwordController,
//              decoration: new InputDecoration(
//                hintText: 'Password',
//              ),
//            ),
//          ),
//          new RaisedButton(
//            onPressed: () {
//              if (_readAuth() == null) {
//                _writeAuth();
//                if (_readAuth() != null) {
//                  Navigator.pop(context);
//                }
//              }
//            },
//            child: new Text("Login"),
//          ),
//        ],
//      ),
//    );
//  }
//
//  Future<File> _getAuth() async {
//    // get the path to the document directory.
//    String dir = (await getApplicationDocumentsDirectory()).path;
//    return new File('$dir/auth.txt');
//  }
//
//  Future<List<String>> _readAuth() async {
//    try {
//      File file = await _getAuth();
//      // read the variable as a string from the file.
//      String contents = await file.readAsString();
//      return contents.split(':');
//    } on FileSystemException {
//      return null;
//    }
//  }
//
//  Future<Null> _writeAuth() async {
//    // write the variable as a string to the file
//    await (await _getAuth()).writeAsString(
//        _usernameController.text + ':' + _passwordController.text);
//  }
//}