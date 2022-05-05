import 'package:flutter/material.dart';
import 'package:project0/presenter/home/home_page.dart';

class AppWidget extends StatelessWidget {

  const AppWidget({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Agenda'),),
           body: const HomePage(),
       );
  }
}