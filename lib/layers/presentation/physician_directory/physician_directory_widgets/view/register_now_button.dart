import 'package:flutter/material.dart';

class RegisterNowButton extends StatefulWidget {
  const RegisterNowButton({super.key});

  @override
  State<RegisterNowButton> createState() => _RegisterNowButtonState();
}

class _RegisterNowButtonState extends State<RegisterNowButton> {
  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          print("register now");
        },
        child: Container(
          height: height * 0.05,
          // width: width * 0.6,
          decoration: BoxDecoration(
            color: const Color(0xFF006837),
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Center(
            child: Text(
              "Register Now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                height: 1.2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
