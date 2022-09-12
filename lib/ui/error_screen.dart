import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final Exception? error;
  late String errorMessage;

  final VoidCallback? onRetryPressed;

  ErrorScreen({Key? key, this.error, this.onRetryPressed})
      : super(key: key) {
    if (error != null) {
      errorMessage = error.toString();
    } else {
      errorMessage = 'Error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Text(
                errorMessage,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 2, backgroundColor: Colors.purple),
              onPressed: onRetryPressed,
              child: const Text('Retry', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}