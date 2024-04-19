import 'package:flutter/material.dart';
import '../../utils/auth_utils.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

// need to add "remember me checkbox" and "forgot password" link

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('SkinSkan'),
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Email input field
                  FormField<String>(
                    initialValue: '',
                    validator: (value) {
                      if(value == null || !value.contains('@')){
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    onSaved: (value) => _email = value!,
                    builder: (FormFieldState<String> state){
                      return TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          errorText: state.errorText,
                        ),
                        onChanged: state.didChange,
                      );
                    },
                  ),
                  // Password input field
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    validator: (value) {
                      if(value == null || value.isEmpty || value.length < 8){
                        return 'Password must be at least 8 characters and contain\nan uppercase letter, a lowercase letter, a number, and a special character';
                      }
                      return null;
                    },
                    onSaved: (value) => _password = value!,
                  ),

                  SizedBox(height: 20),
                  
                  // Login button
                  ElevatedButton(
                    onPressed: () {
                      trySubmitForm(
                        _formKey, 
                        _email,
                        _password, 
                        context,
                        () => Navigator.of(context).pushReplacementNamed('/home')
                      );
                    }, 
                    child: Text('Login'),
                  ),
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}