import 'package:flutter/material.dart';
import 'package:stylish_dialog/stylish_dialog.dart';

import 'stylish_dialog_examples.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stylish Dialog Example',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const StylishExample(),
    );
  }
}

class StylishExample extends StatefulWidget {
  const StylishExample({Key? key}) : super(key: key);

  @override
  _StylishExampleState createState() => _StylishExampleState();
}

class _StylishExampleState extends State<StylishExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Center(
              child: Text(
                'Simple dialog bind with success dialog',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Positioned.fill(
              top: 80,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    //Dialog Controller
                    DialogController controller = DialogController(
                      listener: (status) {
                        if (status == DialogStatus.Showing) {
                          print("Dialog is showing");
                        } else if (status == DialogStatus.Changed) {
                          print("Dialog type changed");
                        } else if (status == DialogStatus.Dismissed) {
                          print("Dialog dismissed");
                        }
                      },
                    );

                    StylishDialog dialog = StylishDialog(
                      context: context,
                      alertType: StylishDialogType.PROGRESS,
                      titleText: 'Processing...',
                      dismissOnTouchOutside: false,
                      controller: controller,
                      // backgroundColor: Colors.purple,
                      // style: Style.Style1,
                    );
                    dialog.show();

                    Future.delayed(const Duration(seconds: 3), () {
                      dialog.changeAlertType(
                        alertType: StylishDialogType.SUCCESS,
                        titleText: 'Congrats!',
                        contentText: 'Task completed successfuly',

                        /// Deprecated
                        ///
                        /// ```dart
                        ///
                        /// confirmText: 'Dismiss',
                        /// confirmPressEvent: () {
                        ///   dialog.dismiss();
                        /// },
                        ///
                        /// cancelText: 'Not now',
                        /// cancelPressEvent: () {},
                        ///
                        /// ```

                        //Use `confirmButton` now
                        confirmButton: TextButton(
                          onPressed: () {
                            dialog.dismiss();
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              'Dismiss',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.teal),
                          ),
                        ),
                      );
                    });
                  },
                  child: const Text(
                    'Show Me',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(160, 44)),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.teal,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Positioned.fill(
              bottom: 20,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const StylishDialogExamples()));
                  },
                  child: const Text(
                    'More Examples',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(160, 42)),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.teal,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
