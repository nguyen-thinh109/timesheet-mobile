import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LeaveFormPage extends StatefulWidget {
  const LeaveFormPage({super.key});

  @override
  State<LeaveFormPage> createState() => _LeaveFormPageState();
}

class _LeaveFormPageState extends State<LeaveFormPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/images/road.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 40),
            child: Container(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    heightFactor: 1.5,
                    child:
                        Image.asset('assets/images/timesheet2.png', height: 70),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                      child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(children: [

                    ]),
                  )),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
