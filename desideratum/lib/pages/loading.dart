import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async{
    Uri url = Uri.https('jsonplaceholder.typicode.com', 'todos/1');
    Response res = await get(url);
    Map data = jsonDecode(res.body);
    print(data);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading'),
    );
  }
}