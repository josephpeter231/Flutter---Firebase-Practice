import 'package:cloud_firestore/cloud_firestore.dart';

class Employee {
  String id;
  String name;
  DateTime joiningDate;
  bool isActive;

  Employee({required this.id, required this.name, required this.joiningDate, required this.isActive});

  factory Employee.fromFirestore(Map<String, dynamic> data, String documentId) {
    return Employee(
      id: documentId,
      name: data['name'],
      joiningDate: (data['joiningDate'] as Timestamp).toDate(),
      isActive: data['isActive'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'name': name,
      'joiningDate': joiningDate,
      'isActive': isActive,
    };
  }
}
