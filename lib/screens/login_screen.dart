import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

enum LoginType { teacher, student }

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  LoginType? _character = LoginType.teacher;

  get auth => null;

  @override
  Widget build(BuildContext context) {
    doLogin() {
      final form = formKey.currentState;
      if (form!.validate()) {
        form.save();
        final Future<Map<String, dynamic>> successfulMessage = auth.login(
            emailController.text,
            passwordController.text,
            _character == LoginType.teacher ? "teacher" : "student");

        successfulMessage.then((response) {
          if (response['status']) {
            // User user = response['user'];
            if (_character == LoginType.teacher) {
              Navigator.pushNamed(context, '/dashboard');
            } else {
              Navigator.pushNamed(context, '/studentdashboard');
            }
          } else {
            if (response['error_code'] == "email_not_verified") {
              Navigator.pushNamed(context, '/verifyemail');
            } else {
              // Flushbar(
              //   title: "Failed Login",
              //   message: response['message'].toString(),
              //   duration: const Duration(seconds: 3),
              // ).show(context);
            }
          }
        });
      } else {
        print("form is invalid");
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text('fjnjv'),),
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: RadioListTile(
                              title: const Text("Student"),
                              value: LoginType.student,
                              groupValue: _character,
                              onChanged: (LoginType? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            )),
                        Expanded(
                            flex: 1,
                            child: RadioListTile(
                              title: const Text('Teacher'),
                              value: LoginType.teacher,
                              groupValue: _character,
                              onChanged: (LoginType? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            )),
                      ]),
                      _textInput(
                          hint: "Email",
                          autofocus: false,
                          obscuretext: false,
                          controller: emailController,
                          icon: Icons.email,
                         ),
                      _textInput(
                          hint: "Password",
                          autofocus: false,
                          obscuretext: true,
                          controller: passwordController,
                          icon: Icons.vpn_key,
                         ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/forgetpass");
                          },
                          child: const Text(
                            "Forgot Password?",
                          ),
                        ),
                      ),
                       Expanded(
                         child: Center(

                          ),
                         ),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  var loading = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const <Widget>[
      CircularProgressIndicator(),
      Text(" Authenticating ... Please wait")
    ],
  );

  Widget _textInput(
      {controller, hint, autofocus, obscuretext, icon, validator}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 10),
      child: TextFormField(
        autofocus: autofocus,
        obscureText: obscuretext,
        controller: controller,
        validator: validator,
      ),
    );
  }
}