import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SafeArea(
          child: Padding(
            padding:
            const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 100),
            child: Container(
              color: Color(0x00e4dbe0),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
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
                        Image.asset('assets/images/decor/leave1.png', width: 24),
                        Padding(padding: const EdgeInsets.only(left: 8)),
                        Text('Thông tin chấm công:',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)
                        )
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
        Positioned(
          left: 0,
          bottom: -120,
          child: Image.asset(
            'assets/images/decor/capa8.png',
            fit: BoxFit.contain,
            width: MediaQuery.sizeOf(context).width,
            alignment: Alignment.center,
          ),
        ),
      ]),
    );
  }
}
