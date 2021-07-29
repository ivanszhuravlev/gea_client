import 'package:flutter/material.dart';
import 'package:gea/api/authentication.dart';
import 'package:gea/modules/forms/sign_in_form.dart';
import 'package:gea/modules/forms/sign_up_form.dart';
import 'package:gea/protos/users/accounts/accounts_v1.pb.dart';
import 'package:gea/screens/home_screen.dart';
import 'package:gea/ui/heading.dart';

class LoginScreen extends StatelessWidget {
  final AuthClient client = AuthClient();

  onLogin(BuildContext context) {
    Navigator.of(context).pushNamed(HomeScreen.route);
  }

  Future<void> onSignUp(String username, String password) async {
    await client.signUp(AccountCreds(username: username, password: password));
  }

  Future<void> onSignIn(String username, String password) async {
    await client.signIn(AccountCreds(username: username, password: password));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SizedBox(
          width: 420,
          child: DefaultTabController(
            length: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TabBar(
                  tabs: [
                    Tab(child: Heading(text: "Sign up", fontSize: 16)),
                    Tab(child: Heading(text: "Sign in", fontSize: 16)),
                  ],
                ),
                Container(
                  // width: 300,
                  height: 600,
                  alignment: Alignment.center,
                  child: TabBarView(
                    children: [
                      SignUpForm(onSubmit: (username, password) async {
                        await onSignUp(username, password);
                        onLogin(context);
                      }),
                      SignInForm(onSubmit: (username, password) async {
                        await onSignIn(username, password);
                        onLogin(context);
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      color: Colors.white,
    );
  }
}
