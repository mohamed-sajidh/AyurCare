import 'package:ayurcare/layers/presentation/appoinment_registration/appoinment_registration_widgets/view/location_drop_down.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({super.key});
  final anFormKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController whatsAppNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: widget.anFormKey,
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  "Name",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: height * 0.012, bottom: height * 0.025),
              child: TextFormField(
                controller: widget.nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'required';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: Color(0x40D9D9D9),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  labelText: 'Enter Your Full Name',
                ),
              ),
            ),
            const Row(
              children: [
                Text(
                  "Whatsapp Number",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: height * 0.012, bottom: height * 0.025),
              child: TextFormField(
                controller: widget.whatsAppNumberController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'required';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: Color(0x40D9D9D9),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  labelText: 'Enter Your Whatsapp Number',
                ),
              ),
            ),
            const Row(
              children: [
                Text(
                  "Whatsapp Number",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: height * 0.012, bottom: height * 0.025),
              child: TextFormField(
                controller: widget.addressController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'required';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: Color(0x40D9D9D9),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  labelText: 'Enter Your Full Address',
                ),
              ),
            ),
            const Row(
              children: [
                Text(
                  "Location",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            LocationDropDown()
          ],
        ),
      ),
    );
  }
}
