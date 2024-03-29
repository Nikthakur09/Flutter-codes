import 'dart:async';

class Validator {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.contains == '@') {
      sink.add(email);
    } else {
      sink.addError('Enter a valid Email');
    }
  });
  
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length > 3) {
      sink.add(password);
    } else {
      sink.addError('Enter minimum 4 characters');
    }
  });
}
