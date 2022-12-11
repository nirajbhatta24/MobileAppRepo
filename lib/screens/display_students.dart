
import 'package:flutter/material.dart';
import '../model/student.dart';

class DisplayStudentScreen extends StatefulWidget {
  const DisplayStudentScreen({super.key});

  @override
  State<DisplayStudentScreen> createState() => _DisplayStudentScreenState();
}

class _DisplayStudentScreenState extends State<DisplayStudentScreen> {
  List<Student> lstStudent = [];

  @override
  void didChangeDependencies() {
    lstStudent = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Student'),
      ),
      body: lstStudent.isNotEmpty
          ? ListView.builder(
              itemCount: lstStudent.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(lstStudent[index].fname!),
                  subtitle: Text(lstStudent[index].address!),
                  trailing: Wrap(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(
                            () {
                              //Delete Student
                              lstStudent.removeAt(index);
                            },
                          );
                        },
                        icon: const Icon(Icons.delete),
                      )
                    ],
                  ),
                );
              },
            )
          : const Center(
              child: Text('No Data'),
            ),
    );
  }
}