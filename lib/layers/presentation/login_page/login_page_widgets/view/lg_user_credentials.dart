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
          Text(
            "Login Or Register To Book Your Appointments",
            style: TextStyle(
                fontSize: 18.sp, fontWeight: FontWeight.w600, height: 1.2),
          ),
        ],
      ),
    );
  }
}
