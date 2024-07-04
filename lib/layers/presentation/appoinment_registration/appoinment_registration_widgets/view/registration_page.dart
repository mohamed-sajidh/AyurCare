import 'package:ayurcare/layers/presentation/appoinment_registration/appoinment_registration_widgets/view/branch_drop_down.dart';
import 'package:ayurcare/layers/presentation/appoinment_registration/appoinment_registration_widgets/view/location_drop_down.dart';
import 'package:ayurcare/layers/presentation/appoinment_registration/appoinment_registration_widgets/view/hour_drop_down.dart';
import 'package:ayurcare/layers/presentation/appoinment_registration/appoinment_registration_widgets/view/minutes_drop_down.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({super.key});
  final anFormKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController whatsAppNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController totalAmountController = TextEditingController();
  TextEditingController discountAmountController = TextEditingController();
  TextEditingController advanceAmountController = TextEditingController();
  TextEditingController balanceAmountController = TextEditingController();

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
                  EdgeInsets.only(top: height * 0.012, bottom: height * 0.020),
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
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0x40D9D9D9),
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
                  EdgeInsets.only(top: height * 0.012, bottom: height * 0.020),
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
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0x40D9D9D9),
                  // enabledBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.grey,
                  //     width: 0.5,
                  //   ),
                  // ),
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
                  EdgeInsets.only(top: height * 0.012, bottom: height * 0.020),
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
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0x40D9D9D9),
                  labelText: 'Enter Your Full Address',
                ),
              ),
            ),
            const LocationDropDown(),
            SizedBox(
              height: height * 0.020,
            ),
            const BranchDropDown(),
            SizedBox(
              height: height * 0.020,
            ),
            const Row(
              children: [
                Text(
                  "Total Amount",
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
                  EdgeInsets.only(top: height * 0.012, bottom: height * 0.020),
              child: TextFormField(
                controller: widget.totalAmountController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'required';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0x40D9D9D9),
                ),
              ),
            ),
            // SizedBox(
            //   height: height * 0.010,
            // ),
            const Row(
              children: [
                Text(
                  "Discount Amount",
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
                  EdgeInsets.only(top: height * 0.012, bottom: height * 0.020),
              child: TextFormField(
                controller: widget.discountAmountController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'required';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0x40D9D9D9),
                ),
              ),
            ),

            const Row(
              children: [
                Text(
                  "Advance Amount",
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
                  EdgeInsets.only(top: height * 0.012, bottom: height * 0.020),
              child: TextFormField(
                controller: widget.advanceAmountController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'required';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0x40D9D9D9),
                ),
              ),
            ),

            const Row(
              children: [
                Text(
                  "Balance Amount",
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
                  EdgeInsets.only(top: height * 0.012, bottom: height * 0.020),
              child: TextFormField(
                controller: widget.balanceAmountController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'required';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0x40D9D9D9),
                ),
              ),
            ),
            const Row(
              children: [
                Text(
                  "Treatment Time",
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
            SizedBox(height: height * 0.012),
            Container(
              height: height * 0.058,
              width: width * 0.99,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TreatmentTimeDropDown(),
                  MinutesDropDown(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
