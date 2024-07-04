import 'package:ayurcare/layers/presentation/login_page/login_page_widgets/view/lg_image_section.dart';
import 'package:ayurcare/layers/presentation/login_page/login_page_widgets/view/lg_user_credentials.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const LgImageSection(),
          LgUserCredentials(),
        ],
      ),
    );
  }
}
