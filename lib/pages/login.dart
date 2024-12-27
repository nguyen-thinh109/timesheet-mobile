import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final pwdController = TextEditingController();
  final usernameController = TextEditingController();

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
        'assets/images/bush.jpg',
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
                Expanded(
                  child: Flex(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      direction: Axis.vertical,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              print({
                                pwdController.text,
                                usernameController.text
                              });

                              showBottomSheet(context);
                            },
                            child: const Text('Log in'))
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
    super.dispose();
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      useSafeArea: true,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.amber,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.close_rounded))
                ]),
                Expanded(
                  child: Flex(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      direction: Axis.vertical,
                      children: [
                        TextField(
                            controller: usernameController,
                            decoration: const InputDecoration(
                              label: Text('Username'),
                            )),
                        const SizedBox(height: 16),
                        TextField(
                            controller: pwdController,
                            decoration:
                                const InputDecoration(label: Text('Password')),
                            obscuringCharacter: '•',
                            obscureText: true),
                        const SizedBox(height: 24),
                        ElevatedButton(
                            onPressed: () {
                              print({
                                pwdController.text,
                                usernameController.text
                              });
                            },
                            child: const Text('Log in'))
                      ]),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
