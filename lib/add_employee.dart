import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddEmployee extends StatefulWidget {
  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _positionController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  Future<void> _addEmployee() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('employees').add({
        'name': _nameController.text,
        'position': _positionController.text,
        'dateOfJoining': _dateController.text,
        'isActive': true,
      });
      _nameController.clear();
      _positionController.clear();
      _dateController.clear();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Employee added')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _positionController,
              decoration: InputDecoration(labelText: 'Position'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a position';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _dateController,
              decoration: InputDecoration(labelText: 'Date of Joining (YYYY-MM-DD)'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the date of joining';
                }
                if (!RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(value)) {
                  return 'Please enter the date in YYYY-MM-DD format';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addEmployee,
              child: Text('Add Employee'),
            ),
          ],
        ),
      ),
    );
  }
}
