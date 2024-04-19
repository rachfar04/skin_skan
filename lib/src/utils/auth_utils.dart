import 'package:flutter/material.dart';

Future<bool> login(String email, String password) async {
 // Check if email is valid
  bool emailValid = RegExp(r'\S+@\S+\.\S+').hasMatch(email);
  // Check if password is strong
  bool passwordValid = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$').hasMatch(password);
  
  return emailValid && passwordValid;
}

void showErrorDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Login Failed'),
      content: Text('Invalid email or password.'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Okay'),
        ),
      ],
    ),
  );
}

void trySubmitForm(
  GlobalKey<FormState> formKey, 
  String email, 
  String password, 
  BuildContext context,
  Function onSuccess
) {
  if(formKey.currentState!.validate()) {
    formKey.currentState!.save();
    login(email, password).then((isAuthenticated) {
      if(isAuthenticated) {
        onSuccess();
      } else {
        showErrorDialog(context);
      }
    });
  }
}