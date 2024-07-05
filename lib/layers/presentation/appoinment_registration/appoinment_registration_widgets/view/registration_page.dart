import 'package:ayurcare/layers/presentation/appoinment_registration/appoinment_registration_widgets/view/branch_drop_down.dart';
import 'package:ayurcare/layers/presentation/appoinment_registration/appoinment_registration_widgets/view/location_drop_down.dart';
import 'package:ayurcare/layers/presentation/appoinment_registration/appoinment_registration_widgets/view/hour_drop_down.dart';
import 'package:ayurcare/layers/presentation/appoinment_registration/appoinment_registration_widgets/view/minutes_drop_down.dart';
import 'package:ayurcare/layers/presentation/appoinment_registration/appoinment_registration_widgets/view/treatment_page.dart';
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
  TextEditingController treatmentDateController = TextEditingController();
  int _selectedValue = 0;

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

            const TreatmentPage(),

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
                  "Payment Option",
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

            SizedBox(
              height: height * 0.058,
              width: width * 0.99,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Radio(
                          fillColor:
                              WidgetStateProperty.resolveWith(getColor),
                          value: 1,
                          groupValue: widget._selectedValue,
                          onChanged: (value) {
                            setState(() {
                              widget._selectedValue = value!;
                            });
                          },
                        ),
                        const Expanded(
                          child: Text('Cash'),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Radio(
                          fillColor:
                              WidgetStateProperty.resolveWith(getColor),
                          value: 2,
                          groupValue: widget._selectedValue,
                          onChanged: (value) {
                            setState(() {
                              widget._selectedValue = value!;
                            });
                          },
                        ),
                        const Expanded(
                          child: Text('Card'),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Radio(
                          fillColor:
                              WidgetStateProperty.resolveWith(getColor),
                          value: 3,
                          groupValue: widget._selectedValue,
                          onChanged: (value) {
                            setState(() {
                              widget._selectedValue = value!;
                            });
                          },
                        ),
                        const Expanded(
                          child: Text('UPI'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: height * 0.020,
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
                  "Treatment Date",
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
                controller: widget.treatmentDateController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'required';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.calendar_today_outlined,
                  ),
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

Color getColor(Set<MaterialState> states) {
  return Colors.green;
}
