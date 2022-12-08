import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _ageController = TextEditingController();
  final _globalkey = GlobalKey<FormState>();
  String gender = "male";
class _StudentScreenState extends State<StudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Student Details',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 250, 225, 254)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _globalkey,
          child: Column(
            children: [
              TextFormField(
                  controller: _firstNameController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter first name';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                  controller: _lastNameController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Last Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter last name';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                  controller: _ageController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Age'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your age';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 8,
              ),
              Text("Select gender", style: TextStyle(fontSize: 18),),
              RadioListTile(
                title: Text("Male"),
                value: "male", 
                groupValue: gender, 
                onChanged: (value){
                setState(() {
                gender = value.toString();
                });
          },
      ),
                    RadioListTile(
                title: Text("Female"),
                value: "Female", 
                groupValue: gender, 
                onChanged: (value){
                setState(() {
                gender = value.toString();
                });
          },
      ),

            ]
            
        )
        ))
        );
        
  }
}