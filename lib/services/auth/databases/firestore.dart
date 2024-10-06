import 'package:cloud_firestore/cloud_firestore.dart';

class Firestore {
  final CollectionReference orders = FirebaseFirestore.instance.collection('orders');

  Future<void> saveOrderToDatabase(String reciept) async{
    await orders.add({
      'date' : DateTime.now(),
      'order': reciept,
    });
  }
}