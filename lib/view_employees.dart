import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class ViewEmployees extends StatefulWidget {
  @override
  _ViewEmployeesState createState() => _ViewEmployeesState();
}

class _ViewEmployeesState extends State<ViewEmployees> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('employees').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }

        final employees = snapshot.data!.docs;

        return ListView.builder(
          itemCount: employees.length,
          itemBuilder: (context, index) {
            var employee = employees[index];
            var name = employee['name'];
            var position = employee['position'];
            var dateOfJoining = employee['dateOfJoining'];
            var isActive = employee['isActive'];
            
            DateTime joiningDate = DateFormat('yyyy-MM-dd').parse(dateOfJoining);
            int yearsWithCompany = DateTime.now().year - joiningDate.year;
            
          
            bool isLongTermActiveEmployee = (yearsWithCompany > 5 && isActive);
            
            return ListTile(
              title: Text(name),
              subtitle: Text('$position\nDate of Joining: $dateOfJoining'),
              tileColor: isLongTermActiveEmployee ? Colors.green[100] : null,
            );
          },
        );
      },
    );
  }
}
