import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../shared/bottom_sheets.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final usernameController = TextEditingController();
  final pwdController = TextEditingController();
  final repeatedPwdController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Image.asset(
        'assets/images/login/bg.jpg',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      ),
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 0, left: 24, right: 24, bottom: 40),
          child: Container(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 120, left: 0, right: 24, bottom: 50),
                    child: const Text(
                      'Editors\' picks and our top buying'
                      ' guides',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    )),
                Expanded(
                  child: Flex(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      direction: Axis.vertical,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(Colors.white30),
                                foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                                minimumSize: WidgetStateProperty.all(Size(double.infinity, 48)),
                                textStyle: WidgetStateProperty.all<TextStyle?>(TextStyle(fontWeight: FontWeight.w700, fontSize: 22))),
                            onPressed: () {
                              if (kDebugMode) {
                                print('Login Page - Go to login');
                              }

                              showLoginBottomSheet(context, usernameController, pwdController);
                            },
                            child: const Text('Log in')),
                        SizedBox(height: 16),
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
                              foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                              shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
                              minimumSize: WidgetStateProperty.all(Size(double.infinity, 40)),
                              textStyle: WidgetStateProperty.all<TextStyle?>(TextStyle(fontSize: 16)),
                            ),
                            onPressed: () {
                              if (kDebugMode) {
                                print('Login Page - Create new account');
                              }

                              showCreateAccountBottomSheet(context, usernameController, pwdController, repeatedPwdController);
                            },
                            child: const Text('Create new account')),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    ]));
  }

  @override
  void dispose() {
    pwdController.dispose();
    usernameController.dispose();
    repeatedPwdController.dispose();
    super.dispose();
  }
}
