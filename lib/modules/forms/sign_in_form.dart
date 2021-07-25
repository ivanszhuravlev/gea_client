import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  final _formKey = GlobalKey<FormState>();

  final OnSubmit onSubmit;

  SignInForm({required this.onSubmit});

  @override
  _SignInForm createState() {
    return _SignInForm();
  }
}

class _SignInForm extends State<SignInForm> {
  var username = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 300,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Username",
              ),
              key: Key("username"),
              controller: username,
              validator: _validator,
            ),
          ),
          SizedBox(
            width: 300,
            child: TextFormField(
              enableSuggestions: false,
              autocorrect: false,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
              ),
              key: Key("password"),
              controller: password,
              validator: _validator,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24),
            child: ElevatedButton(
              onPressed: () {
                if (widget._formKey.currentState!.validate()) {
                  widget.onSubmit(username.text, password.text);
                }
              },
              child: Text("Sign in"),
            ),
          ),
        ],
      ),
    );
  }
}

String? Function(String?)? _validator = (value) {
  if (value == null || value.isEmpty) {
    return "Cannot be empty";
  }
  return null;
};

typedef Future<void> OnSubmit(String username, String password);