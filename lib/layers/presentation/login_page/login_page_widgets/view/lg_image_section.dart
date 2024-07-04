import 'package:ayurcare/layers/presentation/assets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LgImageSection extends StatelessWidget {
  const LgImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return SizedBox(
      height: height * 0.3,
      // width: 100.w,
      child: Stack(
        children: <Widget>[
          Container(
            height: height * 0.3,
            // width: 100.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Asset.login_page_bg_img),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Container(
              height: height * 0.1,
              width: width * 0.18,
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
