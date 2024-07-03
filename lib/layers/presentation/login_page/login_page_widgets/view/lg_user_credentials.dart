import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LgUserCredentials extends StatefulWidget {
  const LgUserCredentials({super.key});

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
                    fontSize: 14.sp, fontWeight: FontWeight.w400, height: 1.2),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: TextFormField(
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
                    fontSize: 14.sp, fontWeight: FontWeight.w400, height: 1.2),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: TextFormField(
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
              print("login button pressed");
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
    );
  }
}
