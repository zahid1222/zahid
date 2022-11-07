import 'package:cloud_firestore/cloud_firestore.dart';


class FirebaseService {

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<bool> addNewRecord(String string, String des, String currentDate) async {
    Map<String, String> data = {
      'noteTitle': string,
      'noteDes': des,
      'date': currentDate,
    };
    await _firebaseFirestore.collection('name').doc('1').set(data);
    return true;
  }

  enterDummyData() async {
    Map<String, dynamic> data = {
      'name' : 'adnan',
      'age': 25,
      'isMarried': false,
      'height': 6.2,
    };

    await _firebaseFirestore.collection('dummyData').add(data);
  }

  updateRecord(String string, DateTime dateTime) {
    Map<String, String> data = {
      'noteTitle': string,
      'noteDes': 'All sports are good for health',
      'updateDate': dateTime.toString(),
    };
    _firebaseFirestore.collection('name').doc('1').update(data);
  }

  deleteRecord(String string) {
    _firebaseFirestore.collection('name').doc('1').delete();
  }

  Future<void> getData() async {
    // Get docs from collection reference
    QuerySnapshot querySnapshot = await _firebaseFirestore.collection('name').get();

    // Get data from docs and convert map to List
    final allData = querySnapshot.docs.map((doc) => doc.id).toList();

    print(allData);
  }


}