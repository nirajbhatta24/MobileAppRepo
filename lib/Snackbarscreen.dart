import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:motion_toast/motion_toast.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key});

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  _showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar( SnackBar(
      backgroundColor: Colors.amberAccent,
      content: const Text('Hello',style: TextStyle(
        color: Colors.black,
      ),),
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      action:SnackBarAction(
        label: 'OK', 
        onPressed: (){},
      textColor: Colors.black,),
    ));
  }
  _showToast(){
    Fluttertoast.showToast(
      msg:"Hello from me 0l0",
      toastLength:Toast.LENGTH_SHORT
    );

  }
  _successMessage(){
    MotionToast.success(
      description:const Text('Success message'),
      animationDuration:Duration.zero,
    ).show(context);
  }
  _errorMessage(){
    MotionToast.error(
      description:const Text('Error message'),
      animationDuration:Duration.zero,
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Snack Bar"),
        ),
        body: Center(
          child: Column(
            children: 
              [ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color.fromARGB(255, 99, 109, 244)), // background
                onPressed: () {_showSnackbar();},
                child: const Text(
                  'SnackBar',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color.fromARGB(255, 65, 107, 246)), // background
                onPressed: () {_showToast();},
                child: const Text(
                  'ToastBar',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color.fromARGB(255, 36, 179, 67)), // background
                onPressed: () {_successMessage();},
                child: const Text(
                  'Success',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color.fromARGB(255, 209, 86, 88)), // background
                onPressed: () {_errorMessage();},
                child: const Text(
                  'Error',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
            
          ),
        )
      );
  }
}