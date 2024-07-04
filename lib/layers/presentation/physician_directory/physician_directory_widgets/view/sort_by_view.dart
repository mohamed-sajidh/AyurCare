import 'package:flutter/material.dart';

class SortByView extends StatefulWidget {
  const SortByView({super.key});

  @override
  State<SortByView> createState() => _SortByViewState();
}

class _SortByViewState extends State<SortByView> {
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
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: height * 0.046,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Sort by:",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                height: 1.2,
              ),
            ),
            Container(
              // height: height * 0.046,
              width: width * 0.3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: DropdownButton(
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
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
          ],
        ),
      ),
    );
  }
}
