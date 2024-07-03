import 'package:ayurcare/layers/presentation/assets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LgImageSection extends StatelessWidget {
  const LgImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      width: 100.w,
      child: Stack(
        children: <Widget>[
          Container(
            height: 30.h,
            width: 100.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Asset.login_page_bg_img),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Container(
              height: 10.h,
              width: 18.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Asset.logo_img),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
