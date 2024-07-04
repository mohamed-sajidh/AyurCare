import 'package:ayurcare/layers/presentation/assets.dart';
import 'package:flutter/material.dart';

class NotificationPanel extends StatefulWidget {
  const NotificationPanel({super.key});

  @override
  State<NotificationPanel> createState() => _NotificationPanelState();
}

class _NotificationPanelState extends State<NotificationPanel> {
  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, left: 10.0, bottom: 10.0, top: 30.0),
      child: SizedBox(
        height: height * 0.040,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: height * 0.040,
              width: width * 0.060,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Asset.back_button_img),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: height * 0.040,
              width: width * 0.060,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Asset.notification_img),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
