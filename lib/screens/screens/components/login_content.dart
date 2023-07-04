import 'package:flutter/material.dart';
import 'package:flutter_localization_v2/screens/screens/components/utilss/helper_functions.dart';
import 'package:ionicons/ionicons.dart';
import '../../../choose.dart';
import '../../../main_pages/home_screen.dart';
import '../../../utils/constants.dart';
import '../login_screen/change_screen_animation.dart';
import 'bottom_text.dart';
import 'top_text.dart';

enum Screens {
  createAccount,
  welcomeBack,
}

class LoginContent extends StatefulWidget {
  const LoginContent({Key? key}) : super(key: key);

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent>
    with TickerProviderStateMixin {
  late final List<Widget> createAccountContent;
  late final List<Widget> loginContent;
  final _formKeET = GlobalKey<FormState>();
  final _formKeyES = GlobalKey<FormState>();
  final _formKeyPT = GlobalKey<FormState>();
  final _formKeyPS = GlobalKey<FormState>();

  Widget inputEmailTeacher(String hint, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 11),
      child: (Form(
        key: _formKeET,
        child: SizedBox(
          height: 60,
          child: Material(
            elevation: 8,
            shadowColor: Colors.black87,
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.black,
                hintText: hint,
                prefixIcon: Icon(iconData),
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                print(value);
                if (value!.isEmpty) {
                  return "Please Enter Email";
                } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return "Please Enter a Valid Email";
                }
                return null;
              },
            ),
          ),
        ),
      )),
    );
  }

  Widget inputEmailStudent(String hint, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 11),
      child: (Form(
        key: _formKeyES,
        child: SizedBox(
          height: 60,
          child: Material(
            elevation: 8,
            shadowColor: Colors.black87,
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.black,
                hintText: hint,
                prefixIcon: Icon(iconData),
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                print(value);
                if (value!.isEmpty) {
                  return "Please Enter Email";
                } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return "Please Enter a Valid Email";
                }
                return null;
              },
            ),
          ),
        ),
      )),
    );
  }

  Widget inputPasswordTeacher(String hint, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 11),
      child: (Form(
        key: _formKeyPT,
        child: SizedBox(
          height: 60,
          child: Material(
            elevation: 8,
            shadowColor: Colors.black87,
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.black,
                hintText: hint,
                prefixIcon: Icon(iconData),
              ),
              // The validator receives the text that the user has entered.

              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter your password !';
                }
                if (value.trim().length < 8) {
                  return 'Enter a valid password !';
                }
                // Return null if the entered password is valid
                return null;
              },

              // validator: (text) {
              //   if (text == null || text.isEmpty) {
              //     return 'Can\'t be empty';
              //   }
              //   if (text.length < 4) {
              //     return 'Too short';
              //   }
              //   return null;
              // },
            ),
          ),
        ),
      )),
    );
  }

  Widget inputPasswordStudent(String hint, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 11),
      child: (Form(
        key: _formKeyPS,
        child: SizedBox(
          height: 60,
          child: Material(
            elevation: 8,
            shadowColor: Colors.black87,
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.black,
                hintText: hint,
                prefixIcon: Icon(iconData),
              ),
              // The validator receives the text that the user has entered.

              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Please enter your password !';
                }
                if (text.length < 8) {
                  return 'Enter a valid password !';
                }
                return null;
              },
            ),
          ),
        ),
      )),
    );
  }

  Widget loginButton(
    String title,
    bool fromStudent,
    bool EmailTeacher,
    bool EmailStudent,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 16),
      child: ElevatedButton(
        onPressed: () {
          if (fromStudent) {
            if (_formKeyES.currentState!.validate() &&
                _formKeyPS.currentState!.validate()) {
              Navigator.of(context, rootNavigator: true)
                  .push(MaterialPageRoute(builder: (context) {
                return ToChoose(
                  opendrawer: () {},
                  animationtime: 9,
                );
              }));
            }
          }
          if (!fromStudent) {
            if (_formKeET.currentState!.validate() &&
                _formKeyPT.currentState!.validate()) {
              Navigator.of(context, rootNavigator: true)
                  .push(MaterialPageRoute(builder: (context) {
                return HomeScreen(
                  opendrawer: () {},
                  animationtime: 9,
                );
              }));
            }
          }
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: const StadiumBorder(),
          primary: kSecondaryColor,
          elevation: 8,
          shadowColor: Colors.white,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // Widget forgotPassword() {
  //   return Form(
  //       key: _formKey,
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           TextFormField(
  //             // The validator receives the text that the user has entered.
  //             validator: (value) {
  //               if (value == null || value.isEmpty) {
  //                 return 'Please enter some text';
  //               }
  //               return null;
  //             },
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.symmetric(vertical: 16.0),
  //             child: ElevatedButton(
  //               onPressed: () {
  //                 // Validate returns true if the form is valid, or false otherwise.
  //                 if (_formKey.currentState!.validate()) {
  //                   // If the form is valid, display a snackbar. In the real world,
  //                   // you'd often call a server or save the information in a database.
  //                   ScaffoldMessenger.of(context).showSnackBar(
  //                     const SnackBar(content: Text('Processing Data')),
  //                   );
  //                 }
  //               },
  //               child: const Text('Submit'),
  //             ),
  //           ),
  //         ],
  //       ));
  // }

  @override
  void initState() {
    createAccountContent = [
      inputEmailTeacher('Email', Ionicons.mail_outline),
      inputPasswordTeacher('Password', Ionicons.lock_closed_outline),
      loginButton('Login', false, false, false),
    ];

    loginContent = [
      inputEmailStudent('Email', Ionicons.mail_outline),
      inputPasswordStudent('Password', Ionicons.lock_closed_outline),
      loginButton('Login', true, true, true),
    ];

    ChangeScreenAnimation.initialize(
      vsync: this,
      createAccountItems: createAccountContent.length,
      loginItems: loginContent.length,
    );

    for (var i = 0; i < createAccountContent.length; i++) {
      createAccountContent[i] = HelperFunctions.wrapWithAnimatedBuilder(
        animation: ChangeScreenAnimation.createAccountAnimations[i],
        child: createAccountContent[i],
      );
    }

    for (var i = 0; i < loginContent.length; i++) {
      loginContent[i] = HelperFunctions.wrapWithAnimatedBuilder(
        animation: ChangeScreenAnimation.loginAnimations[i],
        child: loginContent[i],
      );
    }

    super.initState();
  }

  @override
  void dispose() {
    ChangeScreenAnimation.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          top: 75,
          left: 29,
          child: TopText(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: createAccountContent,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: loginContent,
              ),
            ],
          ),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: BottomText(),
          ),
        ),
      ],
    );
  }
}
