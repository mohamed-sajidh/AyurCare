import 'package:ayurcare/layers/presentation/appoinment_registration/appoinment_registration_widgets/view/registration_page.dart';
import 'package:ayurcare/layers/presentation/common_widgets.dart';
import 'package:flutter/material.dart';

class AppoinmentRegistrationPage extends StatefulWidget {
  const AppoinmentRegistrationPage({super.key});

  @override
  State<AppoinmentRegistrationPage> createState() =>
      _AppoinmentRegistrationPageState();
}

class _AppoinmentRegistrationPageState
    extends State<AppoinmentRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Column(
      children: [
        const NotificationPanel(),
        SizedBox(
          height: height * 0.01,
        ),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                "Register",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.01,
        ),
        const Divider(),
        SizedBox(
          height: height * 0.01,
        ),
        RegistrationPage()
      ],
    );
  }
}
