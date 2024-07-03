import 'package:flutter/material.dart';

class LoginPageChangeNotifier extends ChangeNotifier {
  // LoginPageChangeNotifier({required this.emailController});

  // void initState() {

  // }

  GlobalKey<FormState> anFormKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController(); 
  TextEditingController passwordController = TextEditingController();
  
}