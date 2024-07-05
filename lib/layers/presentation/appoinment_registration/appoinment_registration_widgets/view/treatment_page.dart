import 'package:ayurcare/layers/presentation/assets.dart';
import 'package:flutter/material.dart';

class TreatmentPage extends StatefulWidget {
  const TreatmentPage({super.key});

  @override
  State<TreatmentPage> createState() => _TreatmentPageState();
}

class _TreatmentPageState extends State<TreatmentPage> {
  String dropdownvalue = 'Select the branch';
  var items = [
    'Select the branch',
    'kerala',
    'tamilnadu',
    'karnataka',
    'goa',
  ];

  void _showDialog(height, width) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                SizedBox(
                  height: height * 0.03,
                ),
                const Row(
                  children: [
                    Text(
                      "Choose Treatment",
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
                  height: height * 0.01,
                ),
                Container(
                  height: height * 0.058,
                  width: width * 0.99,
                  decoration: BoxDecoration(
                    color: Color(0x40D9D9D9),
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
                SizedBox(
                  height: height * 0.02,
                ),
                const Row(
                  children: [
                    Text(
                      "Add Patients",
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
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    Container(
                      height: height * 0.06,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: const Color(0x40D9D9D9),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                        child: Text(
                          "Male",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.10,
                    ),
                    Container(
                      height: height * 0.06,
                      width: width * 0.090,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Asset.minus_button),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(
                      height: height * 0.06,
                      width: width * 0.12,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(
                      height: height * 0.06,
                      width: width * 0.090,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Asset.plus_button),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  children: [
                    Container(
                      height: height * 0.06,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: const Color(0x40D9D9D9),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                        child: Text(
                          "Female",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.10,
                    ),
                    Container(
                      height: height * 0.06,
                      width: width * 0.090,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Asset.minus_button),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(
                      height: height * 0.06,
                      width: width * 0.12,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(
                      height: height * 0.06,
                      width: width * 0.090,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Asset.plus_button),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

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
              "Treatments",
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
          height: height * 0.012,
        ),
        Container(
          height: height * 0.095,
          width: width * 1,
          decoration: const BoxDecoration(
            color: Color(0x40D9D9D9),
            borderRadius: BorderRadius.all(
              Radius.circular(14),
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: width * 0.06,
                child: const Text(
                  "1",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: width * 0.75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Couple Combo Package (Rejuven..",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Male",
                            style: TextStyle(
                              color: Color(0xFF006837),
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              height: 1.2,
                            ),
                          ),
                          SizedBox(width: width * 0.015),
                          Container(
                            height: height * 0.025,
                            width: width * 0.085,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                            ),
                            child: const Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                  color: Color(0xFF006837),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.25,
                          ),
                          const Text(
                            "Female",
                            style: TextStyle(
                              color: Color(0xFF006837),
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              height: 1.2,
                            ),
                          ),
                          SizedBox(width: width * 0.015),
                          Container(
                            height: height * 0.025,
                            width: width * 0.085,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                            ),
                            child: const Center(
                              child: Text(
                                "3",
                                style: TextStyle(
                                  color: Color(0xFF006837),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        print("close button pressed");
                      },
                      child: Container(
                        height: height * 0.025,
                        width: width * 0.060,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Asset.close_img),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.025,
                      width: width * 0.060,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Asset.edit_img),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 0.012,
        ),
        InkWell(
          onTap: () {
            _showDialog(height, width);
          },
          child: Container(
            height: height * 0.058,
            decoration: BoxDecoration(
              color: const Color(0x33006837),
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Center(
              child: Text(
                "+ Add Treatments",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
