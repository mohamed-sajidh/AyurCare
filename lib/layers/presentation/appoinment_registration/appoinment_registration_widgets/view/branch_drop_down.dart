import 'package:flutter/material.dart';

class BranchDropDown extends StatefulWidget {
  const BranchDropDown({super.key});

  @override
  State<BranchDropDown> createState() => _BranchDropDownState();
}

class _BranchDropDownState extends State<BranchDropDown> {
  String dropdownvalue = 'Select the branch';
  var items = [
    'Select the branch',
    'kerala',
    'tamilnadu',
    'karnataka',
    'goa',
  ];

  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Column(
      children: [
        const Row(
          children: [
            Text(
              "Branch",
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
          decoration: BoxDecoration(
            color: Color(0x40D9D9D9),
            // border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(6),
          ),
          child: DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
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
        ),
      ],
    );
  }
}
