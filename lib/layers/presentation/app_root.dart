import 'package:ayurcare/layers/presentation/appoinment_registration/appoinment_registration_page.dart';
import 'package:ayurcare/layers/presentation/login_page/login_page.dart';
import 'package:ayurcare/layers/presentation/physician_directory/physician_directory_page.dart';
import 'package:flutter/material.dart';

class Ayurcare extends StatefulWidget {
  const Ayurcare({super.key});

  @override
  State<Ayurcare> createState() => _AyurcareState();
}

class _AyurcareState extends State<Ayurcare> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    var screeenSize = MediaQuery.of(context).size;
    return const Scaffold(
      body: LoginPage(),
      // body: PhysicianDirectoryPage(),
      // body: AppoinmentRegistrationPage()
    );
  }
}