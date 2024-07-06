import 'package:ayurcare/layers/data/source/network/patient_list_api.dart';
import 'package:ayurcare/layers/presentation/appoinment_registration/appoinment_registration_widgets/change_notifier/appoinment_change_notifier.dart';
import 'package:ayurcare/layers/presentation/assets.dart';
import 'package:ayurcare/layers/presentation/common_widgets.dart';
import 'package:ayurcare/layers/presentation/physician_directory/physician_directory_widgets/view/register_now_button.dart';
import 'package:ayurcare/layers/presentation/physician_directory/physician_directory_widgets/view/search_view.dart';
import 'package:ayurcare/layers/presentation/physician_directory/physician_directory_widgets/view/single_physician_view.dart';
import 'package:ayurcare/layers/presentation/physician_directory/physician_directory_widgets/view/sort_by_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class PhysicianDirectoryPage extends StatefulWidget {
  const PhysicianDirectoryPage({super.key});

  @override
  State<PhysicianDirectoryPage> createState() => _PhysicianDirectoryPageState();
}

class _PhysicianDirectoryPageState extends State<PhysicianDirectoryPage> {
  final patientListApi = PatientListApi();
  @override
  void initState() {
    super.initState();
    patientListApi.getPatientList();
  }

  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Provider<AppoinmentChangeNotifier>(
        create: (_) => AppoinmentChangeNotifier(),
        builder: (context, child) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              actions: [
                Container(
                  height: height * 0.035,
                  width: width * 0.055,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Asset.notification_img),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: SizedBox(
              height: height * 0.08,
              child: const RegisterNowButton(),
            ),
            body: const SingleChildScrollView(
              child: Column(
                children: [
                  SearchView(),
                  SortByView(),
                  SinglePhysicianView(),
                ],
              ),
            ),
          );
        });
  }
}
