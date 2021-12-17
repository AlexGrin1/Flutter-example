import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:ready_doctor_app/screens/auth/sign_up_screen.dart';
import 'package:ready_doctor_app/constants.dart';
import 'package:ready_doctor_app/screens/auth/components/sign_in_form.dart';
import 'package:ready_doctor_app/screens/auth/components/sign_up_form.dart';

class SignInScreen extends StatelessWidget {
  // const SignUpScreen({Key? key,}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("./assets/icons/Sign_Up_bg.svg",
              height: MediaQuery.of(context).size.height),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SingleChildScrollView(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sign In",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(fontWeight: FontWeight.bold)),
                        const SizedBox(height: defaultPadding),
                        Row(
                          children: [
                            Text("Don't have an account?"),
                            TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpScreen())),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: defaultPadding * 2,
                        ),
                        SignInForm(
                          formKey: _formKey,
                        ),
                        const SizedBox(
                          height: defaultPadding * 2,
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: primaryColor),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    // print('it works');
                                    _formKey.currentState!.save();
                                  }
                                },
                                child: Text("Sign In")))
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
