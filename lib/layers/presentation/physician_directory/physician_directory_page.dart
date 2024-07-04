import 'package:ayurcare/layers/presentation/physician_directory/physician_directory_widgets/view/notification_panel.dart';
import 'package:ayurcare/layers/presentation/physician_directory/physician_directory_widgets/view/register_now_button.dart';
import 'package:ayurcare/layers/presentation/physician_directory/physician_directory_widgets/view/search_view.dart';
import 'package:ayurcare/layers/presentation/physician_directory/physician_directory_widgets/view/single_physician_view.dart';
import 'package:ayurcare/layers/presentation/physician_directory/physician_directory_widgets/view/sort_by_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PhysicianDirectoryPage extends StatefulWidget {
  const PhysicianDirectoryPage({super.key});

  @override
  State<PhysicianDirectoryPage> createState() => _PhysicianDirectoryPageState();
}

class _PhysicianDirectoryPageState extends State<PhysicianDirectoryPage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NotificationPanel(),
        SearchView(),
        SortByView(),
        SinglePhysicianView(),
        RegisterNowButton()
      ],
    );
  }
}
