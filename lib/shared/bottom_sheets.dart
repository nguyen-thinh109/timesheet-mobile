import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void showLoginBottomSheet(BuildContext context, usernameController, passwordController) {
  bool isPassWordVisible = false;

  showModalBottomSheet<void>(
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    builder: (BuildContext context) => StatefulBuilder(
        builder: (BuildContext context, StateSetter setModalState) => Stack(fit: StackFit.expand, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    'assets/images/login/hd.png',
                    fit: BoxFit.contain,
                    width: double.infinity,
                    alignment: Alignment.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Flex(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        direction: Axis.vertical,
                        children: [
                          const SizedBox(height: 30),
                          Text(
                            'Welcome!',
                            style: TextStyle(color: Color(0xFF3F744F), fontSize: 40),
                          ),
                          const SizedBox(height: 42),
                          TextFormField(
                              controller: usernameController,
                              style: TextStyle(color: Color(0xFF3F744F)),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none,
                                ),
                                label: Text('Username'),
                                prefixIcon: Icon(Icons.account_circle),
                                filled: true,
                                fillColor: Color(0xFFDAE5DD),
                              )),
                          const SizedBox(height: 16),
                          TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide.none,
                                  ),
                                  label: Text('Password'),
                                  prefixIcon: Icon(Icons.lock_outline),
                                  filled: true,
                                  fillColor: Color(0xFFDAE5DD),
                                  suffixIcon: IconButton(
                                      onPressed: () => {
                                            setModalState(() {
                                              isPassWordVisible = !isPassWordVisible;
                                            })
                                          },
                                      icon: Icon(isPassWordVisible ? Icons.visibility_off : Icons.visibility))),
                              obscuringCharacter: '*',
                              obscureText: !isPassWordVisible),
                          const SizedBox(height: 40),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF3F744F)),
                                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                                  minimumSize: WidgetStateProperty.all(Size(double.infinity, 48)),
                                  textStyle: WidgetStateProperty.all<TextStyle?>(TextStyle(fontWeight: FontWeight.w700, fontSize: 22))),
                              onPressed: () {
                                if (kDebugMode) {
                                  print({'showLoginBottomSheet', usernameController.text, passwordController.text});
                                }
                              },
                              child: const Text('Log in')),
                        ]),
                  ),
                ],
              ),
              Positioned(
                  top: 10,
                  left: 10,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.close_rounded),
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(Colors.white38),
                        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                        textStyle: WidgetStateProperty.all<TextStyle?>(TextStyle(fontWeight: FontWeight.w700, fontSize: 22))),
                  )),
            ])),
  );
}

void showCreateAccountBottomSheet(BuildContext context, usernameController, passwordController, repeatedPasswordController) {
  bool isPasswordVisible = false;
  bool isRepeatedPasswordVisible = false;

  showModalBottomSheet<void>(
    barrierColor: Colors.transparent,
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return StatefulBuilder(builder: (BuildContext context, StateSetter setModalState) {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Flex(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  direction: Axis.vertical,
                  children: [
                    const SizedBox(height: 30),
                    Text(
                      'Create new account!',
                      style: TextStyle(color: Color(0xFF3F744F), fontSize: 40),
                    ),
                    const SizedBox(height: 42),
                    TextFormField(
                        controller: usernameController,
                        style: TextStyle(color: Color(0xFF3F744F)),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                          label: Text('Username'),
                          prefixIcon: Icon(Icons.account_circle),
                          filled: true,
                          fillColor: Color(0xFFDAE5DD),
                        )),
                    const SizedBox(height: 16),
                    TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                            label: Text('Password'),
                            prefixIcon: Icon(Icons.lock_outline),
                            filled: true,
                            fillColor: Color(0xFFDAE5DD),
                            suffixIcon: IconButton(
                                onPressed: () => {
                                      setModalState(() {
                                        isPasswordVisible = !isPasswordVisible;
                                      })
                                    },
                                icon: Icon(isPasswordVisible ? Icons.visibility_off : Icons.visibility))),
                        obscuringCharacter: '*',
                        obscureText: !isPasswordVisible),
                    const SizedBox(height: 16),
                    TextFormField(
                        controller: repeatedPasswordController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                            label: Text('Repeated password'),
                            prefixIcon: Icon(Icons.lock_outline),
                            filled: true,
                            fillColor: Color(0xFFDAE5DD),
                            suffixIcon: IconButton(
                                onPressed: () => {
                                      setModalState(() {
                                        isRepeatedPasswordVisible = !isRepeatedPasswordVisible;
                                      })
                                    },
                                icon: Icon(isRepeatedPasswordVisible ? Icons.visibility_off : Icons.visibility))),
                        obscuringCharacter: '*',
                        obscureText: !isRepeatedPasswordVisible),
                    const SizedBox(height: 40),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF3F744F)),
                            foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                            minimumSize: WidgetStateProperty.all(Size(double.infinity, 48)),
                            textStyle: WidgetStateProperty.all<TextStyle?>(TextStyle(fontWeight: FontWeight.w700, fontSize: 22))),
                        onPressed: () {
                          if (kDebugMode) {
                            print({
                              'showCreateAccountBottomSheet',
                              usernameController.text,
                              passwordController.text,
                              repeatedPasswordController.text
                            });
                          }
                        },
                        child: const Text('Finish')),
                  ]),
            ),
            Positioned(
                top: 10,
                left: 10,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close_rounded),
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Color(0xFFDAE5DD)),
                      foregroundColor: WidgetStateProperty.all<Color>(Color(0xFF3F744F)),
                      textStyle: WidgetStateProperty.all<TextStyle?>(TextStyle(fontWeight: FontWeight.w700, fontSize: 22))),
                )
            ),
            Positioned(
                top: 140,
                right: -10,
                child: Image.asset(
                  'assets/images/decor/capa.png',
                  fit: BoxFit.contain,
                  width: 140,
                )
            ),
          ],
        );
      });
    },
  );
}
