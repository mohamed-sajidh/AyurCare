import 'package:flutter/material.dart';

class LocationDropDown extends StatefulWidget {
  const LocationDropDown({super.key});

  @override
  State<LocationDropDown> createState() => _LocationDropDownState();
}

class _LocationDropDownState extends State<LocationDropDown> {
  String dropdownvalue = 'Date';
  var items = [
    'Date',
    '04-07-2024',
    '05-07-2024',
    '06-07-2024',
    '07-07-2024',
  ];

  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Padding(
      padding: EdgeInsets.only(top: height * 0.012, bottom: height * 0.025),
      child: Container(
        height: height * 0.050,
        width: width * 0.99,
        decoration: BoxDecoration(
          color: Color(0x40D9D9D9),
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: DropdownButton(
            value: dropdownvalue,
            icon: Container(
              alignment: Alignment.centerRight,
              child: const Icon(Icons.keyboard_arrow_down),
            ),
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            underline: SizedBox(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
        ),
      ),
    );
  }
}
