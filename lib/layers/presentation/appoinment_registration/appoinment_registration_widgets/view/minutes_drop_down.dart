import 'package:flutter/material.dart';

class MinutesDropDown extends StatefulWidget {
  const MinutesDropDown({super.key});

  @override
  State<MinutesDropDown> createState() => _MinutesDropDownState();
}

class _MinutesDropDownState extends State<MinutesDropDown> {
  String minuteDropdownValue = 'Minutes';

  var items = [
    'Minutes',
    '00:10',
    '00:20',
    '00:30',
    '00:40',
    '00:50',
  ];
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
            value: minuteDropdownValue,
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
                minuteDropdownValue = newValue!;
              });
            },
          ),
        ),
      ),
    );
  }
}
