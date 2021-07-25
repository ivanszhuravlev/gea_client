import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  final _formKey = GlobalKey<FormState>();

  final OnSubmit onSubmit;

  SignUpForm({required this.onSubmit});

  @override
  _SignUpForm createState() {
    return _SignUpForm();
  }
}

class _SignUpForm extends State<SignUpForm> {
  var username = TextEditingController();
  var password = TextEditingController();
  var passwordRepeat = TextEditingController();

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
              validator: (val) {
                var isEmptyMsg = _validator(val);

                if (isEmptyMsg != null) {
                  return isEmptyMsg;
                }

                return _validatorPass(val, passwordRepeat.text);
              },
            ),
          ),
          SizedBox(
            width: 300,
            child: TextFormField(
              enableSuggestions: false,
              autocorrect: false,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Repeat password",
              ),
              key: Key("password-repeat"),
              controller: passwordRepeat,
              validator: (val) {
                var isEmptyMsg = _validator(val);

                if (isEmptyMsg != null) {
                  return isEmptyMsg;
                }

                return _validatorPass(val, password.text);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24),
            child: ElevatedButton(
              onPressed: () async {
                if (widget._formKey.currentState!.validate()) {
                  widget.onSubmit(username.text, password.text);
                }
              },
              child: Text("Sign up"),
            ),
          ),
        ],
      ),
    );
  }
}

typedef Validator = String? Function(String?);

Validator _validator = (value) {
  if (value == null || value.isEmpty) {
    return "Cannot be empty";
  }
  return null;
};

String? Function(String?, String?) _validatorPass = (first, second) {
  if (first != second) {
    return "Passwords are different";
  }

  return null;
};

typedef Future<void> OnSubmit(String username, String password);