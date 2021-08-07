import 'package:flutter/material.dart';
import 'package:stylish_dialog/stylish_dialog.dart';

class StylishDialogExamples extends StatefulWidget {
  const StylishDialogExamples({Key? key}) : super(key: key);

  @override
  _StylishDialogExamplesState createState() => _StylishDialogExamplesState();
}

class _StylishDialogExamplesState extends State<StylishDialogExamples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Simple message dialog',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return StylishDialog(
                        context: context,
                        alertType: StylishDialog.NORMAL,
                        titleText: 'Hey',
                        contentText: 'This is simple dialog',
                      );
                    });
              },
              child: Text(
                'Show Me',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(160, 44)),
                backgroundColor: MaterialStateProperty.all(
                  Colors.teal,
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Progress dialog with title',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return StylishDialog(
                        context: context,
                        alertType: StylishDialog.PROGRESS,
                        titleText: 'Processing...',
                      );
                    });
              },
              child: Text(
                'Show Me',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(160, 44)),
                backgroundColor: MaterialStateProperty.all(
                  Colors.teal,
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Success Dialog with title',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return StylishDialog(
                        context: context,
                        alertType: StylishDialog.SUCCESS,
                        titleText: 'Wow',
                      );
                    });
              },
              child: Text(
                'Show Me',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(160, 44)),
                backgroundColor: MaterialStateProperty.all(
                  Colors.teal,
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Success dialog with title and content text',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return StylishDialog(
                        context: context,
                        alertType: StylishDialog.SUCCESS,
                        titleText: 'Wow',
                        contentText: 'You did it',
                      );
                    });
              },
              child: Text(
                'Show Me',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(160, 44)),
                backgroundColor: MaterialStateProperty.all(
                  Colors.teal,
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Info dialog with title',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return StylishDialog(
                        context: context,
                        alertType: StylishDialog.INFO,
                        titleText: 'Wait',
                      );
                    });
              },
              child: Text(
                'Show Me',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(160, 44)),
                backgroundColor: MaterialStateProperty.all(
                  Colors.teal,
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Info dialog with title and content text',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return StylishDialog(
                        context: context,
                        alertType: StylishDialog.SUCCESS,
                        titleText: 'You know',
                        contentText: 'Sun rises in the east',
                      );
                    });
              },
              child: Text(
                'Show Me',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(160, 44)),
                backgroundColor: MaterialStateProperty.all(
                  Colors.teal,
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Warning dialog with title and content text',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return StylishDialog(
                        context: context,
                        alertType: StylishDialog.WARNING,
                        titleText: 'Wait',
                        contentText: 'Are you sure you want to do this',
                      );
                    });
              },
              child: Text(
                'Show Me',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(160, 44)),
                backgroundColor: MaterialStateProperty.all(
                  Colors.teal,
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Error dialog with title and content text',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return StylishDialog(
                        context: context,
                        alertType: StylishDialog.ERROR,
                        titleText: 'Opps',
                        contentText: 'Task failed to complete',
                      );
                    });
              },
              child: Text(
                'Show Me',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(160, 44)),
                backgroundColor: MaterialStateProperty.all(
                  Colors.teal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  dialogButtons() {
    return TextButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return StylishDialog(
                context: context,
                alertType: StylishDialog.SUCCESS,
                titleText: 'Wow',
                contentText: 'You did it',
              );
            });
      },
      child: Text(
        'Show Me',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(160, 44)),
        backgroundColor: MaterialStateProperty.all(
          Colors.teal,
        ),
      ),
    );
  }
}
