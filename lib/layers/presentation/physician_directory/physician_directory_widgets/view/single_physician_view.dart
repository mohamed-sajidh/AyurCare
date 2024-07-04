import 'package:ayurcare/layers/presentation/assets.dart';
import 'package:flutter/material.dart';

class SinglePhysicianView extends StatelessWidget {
  const SinglePhysicianView({super.key});

  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) => Divider(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            padding:
                const EdgeInsets.only(left: 15, right: 10, top: 18, bottom: 10),
            height: height * 0.23,
            width: width * 1,
            decoration: const BoxDecoration(
              color: Color(0x40D9D9D9),
              borderRadius: BorderRadius.all(
                Radius.circular(14),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(
                  width: width * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Vikram Singh",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      const Text(
                        "Couple Combo Package (Rejuven...",
                        style: TextStyle(
                          color: Color(0xFF006837),
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      SizedBox(
                        height: height * 0.02,
                        child: Row(
                          children: [
                            Container(
                              height: height * 0.02,
                              width: width * 0.06,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(Asset.calender_img),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.015,
                            ),
                            const Text(
                              "31/12/2024",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                height: 1.2,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Container(
                              height: height * 0.02,
                              width: width * 0.06,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(Asset.person_img),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.015,
                            ),
                            const Text(
                              "Jithesh",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      const Divider(),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "View Booking details",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              height: 1.2,
                            ),
                          ),
                          Container(
                            height: height * 0.02,
                            width: width * 0.03,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(Asset.arrow_img),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}


// ListView.separated(
//         itemBuilder: (context, index) {
//           Container(
//             height: height * 0.3,
//             decoration: const BoxDecoration(
//               color: Color(0x40D9D9D9),
//               boxShadow: [BoxShadow(blurRadius: 5)],
//               borderRadius: BorderRadius.all(
//                 Radius.circular(10),
//               ),
//             ),
//           );
//         },
//         separatorBuilder: (context, index) => const Divider(),
//         itemCount: 5,
//       ),