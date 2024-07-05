import 'package:ayurcare/layers/data/source/network/patient_list_api.dart';
import 'package:flutter/material.dart';

class PatientListProvider with ChangeNotifier {
  final patientListApi = PatientListApi();
  PatientListProvider() {
    print("--------------provider --------------------");
    patientListApi.getPatientList();
  }
}