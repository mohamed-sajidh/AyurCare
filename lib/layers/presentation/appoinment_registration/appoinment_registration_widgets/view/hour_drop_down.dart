import 'package:flutter/material.dart';

class TreatmentTimeDropDown extends StatefulWidget {
  const TreatmentTimeDropDown({super.key});

  @override
  State<TreatmentTimeDropDown> createState() => _TreatmentTimeDropDownState();
}

class _TreatmentTimeDropDownState extends State<TreatmentTimeDropDown> {
  String hourDropdownValue = 'Hour';
  var items = ['Hour', '01:00', '02:00', '03:00', '04:00', '05:00'];

  

  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Container(
      height: height * 0.058,
      width: width * 0.40,
      decoration: BoxDecoration(
        color: Color(0x40D9D9D9),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
            value: hourDropdownValue,
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
                hourDropdownValue = newValue!;
              });
            },
          ),
        ),
      ),
    );
  }
}
