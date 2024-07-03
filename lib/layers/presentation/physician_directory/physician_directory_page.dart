import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PhysicianDirectoryPage extends StatefulWidget {
  const PhysicianDirectoryPage({super.key});

  @override
  State<PhysicianDirectoryPage> createState() => _PhysicianDirectoryPageState();
}

class _PhysicianDirectoryPageState extends State<PhysicianDirectoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.h,
      width: 20.w,
      color: Colors.green,
    );
  }
}