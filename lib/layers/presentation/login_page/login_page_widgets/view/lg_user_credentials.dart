import 'package:ayurcare/layers/domain/repository/login_repository.dart';
import 'package:ayurcare/layers/presentation/login_page/login_page_widgets/change_notifier/login_page_change_notifier.dart';
import 'package:ayurcare/layers/presentation/physician_directory/physician_directory_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sizer/sizer.dart';

class LgUserCredentials extends StatefulWidget {
  LgUserCredentials({super.key});
  final anFormKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final USERNAME = dotenv.env['USERNAME'];
  final PASSWORD = dotenv.env['PASSWORD'];
  final loginRepository = LoginRepository();

  @override
  State<LgUserCredentials> createState() => _LgUserCredentialsState();
}

class _LgUserCredentialsState extends State<LgUserCredentials> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 100.w,
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.h),
      child: Form(
        key: widget.anFormKey,
        child: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            Text(
              "Login Or Register To Book Your Appointments",
              style: TextStyle(
                  fontSize: 18.sp, fontWeight: FontWeight.w600, height: 1.2),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                Text(
                  "Email",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.2),
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
              height: 3.h,
            ),
            Row(
              children: [
                Text(
                  "Password",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.2),
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
              height: 6.h,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return PhysicianDirectoryPage();
                    },
                  ),
                );
                // if (widget.anFormKey.currentState!.validate()) {
                //   if (widget.emailController.text == widget.USERNAME &&
                //       widget.passwordController.text == widget.PASSWORD) {
                //     Navigator.of(context).pushReplacement(
                //       MaterialPageRoute(
                //         builder: (context) {
                //           return PhysicianDirectoryPage();
                //         },
                //       ),
                //     );
                //     widget.loginRepository.postLoginRepository(
                //         email: widget.emailController.text,
                //         password: widget.passwordController.text);
                //   }
                // }
              },
              child: Container(
                height: 6.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: const Color(0xFF006837),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 9.h,
            ),
            RichText(
              text: TextSpan(
                text:
                    'By creating or logging into an account you are agreeing with our',
                style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w300,
                  height: 1.2,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Terms and Conditions',
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w300,
                      height: 1.2,
                      color: const Color(0xFF0028FC),
                    ),
                  ),
                  TextSpan(
                    text: ' and',
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w300,
                      height: 1.2,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: ' Privacy Policy',
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w300,
                      height: 1.2,
                      color: const Color(0xFF0028FC),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
