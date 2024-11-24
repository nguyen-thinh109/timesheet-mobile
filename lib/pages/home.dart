import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: Image.asset('assets/images/timesheet.png', height: 70),
      // ),
      body: Stack(children: [
        Image.asset(
          'assets/images/city1.png',
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Xin chào,',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400)),
                      Text('Thịnh Nguyễn',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32, bottom: 30),
                    child: Row(
                      children: [
                        Image.asset('assets/images/leave.png', width: 30),
                        Padding(padding: const EdgeInsets.only(left: 8)),
                        Text('Thông tin chấm công:',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: 30,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: index % 2 == 0
                              ? Image.asset('assets/images/leave1.png',
                                  width: 28)
                              : Lottie.asset(
                                  'assets/lotties/bird.json',
                                  width: 28,
                                  height: 28,
                                  fit: BoxFit.fill,
                                ),
                          title: Text('Thứ $index',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700)),
                          subtitle: Text('20/11/2024',
                              style: TextStyle(fontSize: 14)),
                          trailing: Text('In: $index:00:00 - Out: $index:00:00',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700)),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(height: 10, color: Colors.black12);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
