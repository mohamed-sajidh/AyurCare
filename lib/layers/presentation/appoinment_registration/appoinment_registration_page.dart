import 'package:ayurcare/layers/presentation/appoinment_registration/appoinment_registration_widgets/view/registration_page.dart';
import 'package:ayurcare/layers/presentation/assets.dart';
import 'package:ayurcare/layers/presentation/common_widgets.dart';
import 'package:ayurcare/layers/presentation/physician_directory/physician_directory_widgets/view/register_now_button.dart';
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Container(
            height: height * 0.035,
            width: width * 0.055,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Asset.notification_img),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: height * 0.08,
        child: const RegisterNowButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
        ),
      ),
    );
  }
}
