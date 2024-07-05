import 'dart:convert';

import 'package:ayurcare/layers/data/source/network/login_api.dart';
import 'package:ayurcare/layers/domain/repository/login_repository.dart';
import 'package:ayurcare/layers/presentation/login_page/login_page_widgets/change_notifier/login_page_change_notifier.dart';
import 'package:ayurcare/layers/presentation/physician_directory/physician_directory_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;

class LgUserCredentials extends StatefulWidget {
  LgUserCredentials({super.key});
  final anFormKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final USERNAME = dotenv.env['USERNAME'];
  final PASSWORD = dotenv.env['PASSWORD'];
  final loginRepository = LoginRepository();
  final loginApi = LoginApi();

  @override
  State<LgUserCredentials> createState() => _LgUserCredentialsState();
}

class _LgUserCredentialsState extends State<LgUserCredentials> {
  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: height * 0.7,
        // width: 100.w,
        // padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Form(
          key: widget.anFormKey,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              const Text(
                "Login Or Register To Book Your Appointments",
                style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.w600, height: 1.2),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              const Row(
                children: [
                  Text(
                    "Email",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: TextFormField(
                  controller: widget.emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'required';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0x40D9D9D9),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    labelText: 'Enter Your Email',
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const Row(
                children: [
                  Text(
                    "Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: TextFormField(
                  controller: widget.passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'required';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0x40D9D9D9),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    labelText: 'Enter Your Password',
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.07,
              ),
              InkWell(
                onTap: () async {
                  if (widget.anFormKey.currentState!.validate()) {
                    widget.loginRepository.postLoginRepository(
                      email: widget.emailController.text,
                      password: widget.passwordController.text,
                    );


                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) {
                          return const PhysicianDirectoryPage();
                        },
                      ),
                    );
                  }
                },
                child: Container(
                  height: height * 0.07,
                  // width: 100.w,
                  decoration: BoxDecoration(
                    color: const Color(0xFF006837),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.09,
              ),
              RichText(
                text: const TextSpan(
                  text:
                      'By creating or logging into an account you are agreeing with our',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    height: 1.2,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Terms and Conditions',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        height: 1.2,
                        color: Color(0xFF0028FC),
                      ),
                    ),
                    TextSpan(
                      text: ' and',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        height: 1.2,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: ' Privacy Policy',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        height: 1.2,
                        color: Color(0xFF0028FC),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> login() async {
  try {
    final url = Uri.parse('https://flutter-amr.noviindus.in/api/Login');
    final response = await http.post(
      url,
      body: {
        'username': 'test_user',
        'password': '12345678',
      },
    );
    print("api completed");
    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      if (responseData['status']) {
        print('Logged in successfully');
        print('Token: ${responseData['token']}');
        // Handle other details from the responseData as needed
      } else {
        print('Login failed: ${responseData['message']}');
      }
    }
  } catch (e) {
    print("-----------------------------------");
    print('HTTP POST request failed: $e');
  } finally {
    // print("finally");
  }
}
