import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../sevises/firebase_servises.dart';

class FirebaseController {
  final firebaseServices = FirebaseServices();

  Future<void> uploadData(
      double long, double lat, String locationName, File imageFile) async {
    firebaseServices.uploadData(long, lat, locationName, imageFile);
  }

  Stream<QuerySnapshot> getDatas() async* {
    yield* firebaseServices.getDatas();
  }
}