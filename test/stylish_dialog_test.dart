// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stylish_dialog/src/stylish_dialog_ui.dart';
import 'package:stylish_dialog/stylish_dialog.dart';

void main() {
  group("StylishDialog Test", () {
    testWidgets('Normal Test', (WidgetTester tester) async {
      await tester.pumpWidget(
        Builder(
          builder: (BuildContext context) {
            Widget testWidget = MediaQuery(
                data: const MediaQueryData(),
                child: MaterialApp(
                    home: StylishDialogUI(
                        alertType: StylishDialogType.NORMAL,
                        context: context)));
            return testWidget;
          },
        ),
      );
    });

    testWidgets('Progress Test', (WidgetTester tester) async {
      await tester.pumpWidget(
        Builder(
          builder: (BuildContext context) {
            Widget testWidget = MediaQuery(
                data: const MediaQueryData(),
                child: MaterialApp(
                    home: StylishDialogUI(
                  context: context,
                  alertType: StylishDialogType.PROGRESS,
                  title: const Text('This is title'),
                  content: const Text('This is content text'),
                )));
            return testWidget;
          },
        ),
      );
    });

    testWidgets('Success Test', (WidgetTester tester) async {
      await tester.pumpWidget(
        Builder(
          builder: (BuildContext context) {
            Widget testWidget = MediaQuery(
                data: const MediaQueryData(),
                child: MaterialApp(
                    home: StylishDialogUI(
                  alertType: StylishDialogType.SUCCESS,
                  context: context,
                  animationLoop: false,
                  title: const Text('Wow'),
                  content: const Text('Task completed'),
                )));
            return testWidget;
          },
        ),
      );
    });

    testWidgets('Info Test', (WidgetTester tester) async {
      await tester.pumpWidget(
        Builder(
          builder: (BuildContext context) {
            Widget testWidget = MediaQuery(
                data: const MediaQueryData(),
                child: MaterialApp(
                  home: StylishDialogUI(
                    context: context,
                    alertType: StylishDialogType.INFO,
                    title: const Text('You know'),
                    content: const Text('This is an amazing dialog'),
                    animationLoop: false,
                  ),
                ));
            return testWidget;
          },
        ),
      );
    });

    testWidgets('Warning Test', (WidgetTester tester) async {
      await tester.pumpWidget(
        Builder(
          builder: (BuildContext context) {
            Widget testWidget = MediaQuery(
                data: const MediaQueryData(),
                child: MaterialApp(
                  home: StylishDialogUI(
                    context: context,
                    alertType: StylishDialogType.WARNING,
                    title: const Text('Wait'),
                    content: const Text('Are you sure you want to delete'),
                    animationLoop: false,
                  ),
                ));
            return testWidget;
          },
        ),
      );
    });

    testWidgets('Error Test', (WidgetTester tester) async {
      await tester.pumpWidget(
        Builder(
          builder: (BuildContext context) {
            Widget testWidget = MediaQuery(
                data: const MediaQueryData(),
                child: MaterialApp(
                    home: StylishDialogUI(
                  context: context,
                  alertType: StylishDialogType.ERROR,
                  title: const Text('Oops'),
                  content: const Text('Task Failed'),
                  animationLoop: false,
                )));
            return testWidget;
          },
        ),
      );
    });

    testWidgets('Simple D. Bind With Success Test',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        Builder(
          builder: (BuildContext context) {
            Widget testWidget = MediaQuery(
              data: const MediaQueryData(),
              child: MaterialApp(
                home: ElevatedButton(
                  onPressed: () {
                    StylishDialog dialog = StylishDialog(
                      context: context,
                      alertType: StylishDialogType.PROGRESS,
                      title: const Text('Processing...'),
                      animationLoop: false,
                    );
                    dialog.show();

                    Future.delayed(const Duration(seconds: 5), () {
                      dialog.changeAlertType(
                        alertType: StylishDialogType.SUCCESS,
                        title: const Text('Congrats!'),
                        content: const Text('Task completed successfuly'),
                        confirmPressEvent: () {
                          dialog.dismiss();
                        },
                        confirmText: 'Dismiss',
                      );
                    });
                  },
                  child: const Text('Show'),
                ),
              ),
            );
            return testWidget;
          },
        ),
      );
    });

    var controller = TextEditingController();

    testWidgets('Custom widget dialog', (WidgetTester tester) async {
      await tester.pumpWidget(
        Builder(
          builder: (BuildContext context) {
            Widget testWidget = MediaQuery(
              data: const MediaQueryData(),
              child: MaterialApp(
                home: ElevatedButton(
                  onPressed: () {
                    StylishDialog dialog = StylishDialog(
                        context: context,
                        alertType: StylishDialogType.NORMAL,
                        addView: TextField(
                          controller: controller,
                          decoration: const InputDecoration(
                              hintText: 'Enter your name'),
                        ),
                        confirmText: 'Submit',
                        confirmPressEvent: () {
                          debugPrint(controller.text);
                        },
                        title: const Text('Name'),
                        animationLoop: false);
                    dialog.show();
                  },
                  child: const Text('Show'),
                ),
              ),
            );
            return testWidget;
          },
        ),
      );
    });
  });
}
