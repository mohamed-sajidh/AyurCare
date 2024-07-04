// import 'package:flutter/material.dart';

// class CalendarDropDown extends StatefulWidget {
//   CalendarDropDown({super.key});
//   TextEditingController calenderController = TextEditingController();

//   @override
//   State<CalendarDropDown> createState() => _CalendarDropDownState();
// }

// class _CalendarDropDownState extends State<CalendarDropDown> {
//   @override
//   Widget build(BuildContext context) {
//     var screeenSize = MediaQuery.of(context).size;
//     var width = screeenSize.width;
//     var height = screeenSize.height;
//     return Padding(
//       padding: EdgeInsets.only(top: height * 0.012, bottom: height * 0.020),
//       child: TextFormField(
//         keyboardType: TextInputType.phone,
//         autocorrect: false,
//         controller: widget.calenderController,
//         validator: (value) {
//           if (value == null || value.isEmpty) {
//             return 'required';
//           }
//           return null;
//         },
//         onSaved: (value) {
//           registrationdate = value;
//         },
//         onTap: () {
//           Future _selectDate() async {
//             DateTime? picked = await showDatePicker(
//                 context: context,
//                 initialDate: new DateTime.now(),
//                 firstDate: new DateTime(2020),
//                 lastDate: new DateTime(2030));
//             if (picked != null)
//               setState(() => {
//                     data.registrationdate = picked.toString(),
//                     intialdateval.text = picked.toString()
//                   });
//           }

//           FocusScope.of(context).requestFocus(new FocusNode());
//         },
//         decoration: const InputDecoration(
//           focusedBorder: InputBorder.none,
//           border: InputBorder.none,
//           filled: true,
//           fillColor: Color(0x40D9D9D9),
//         ),
//       ),
//     );
//   }
// }
