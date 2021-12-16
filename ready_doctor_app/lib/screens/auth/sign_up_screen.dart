import "package:flutter/material.dart";
import 'package:ready_doctor_app/constants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding:const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Create Account",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      Text("Already have an account"),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign In",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  SignUpForm()
                ],
              )),
        ),
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "Username"),
          TextFormField(
              decoration: InputDecoration(
            hintText: "Input your name..",
          )),
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "Email"),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
            hintText: "test@email.com",
          )),
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "Phone"),
          TextFormField(
            keyboardType: TextInputType.phone,
              decoration: InputDecoration(
            hintText: "+1234567",
          )),
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "Password"),
          TextFormField(
            obscureText: true,
              decoration: InputDecoration(
            hintText: "*******",
          )),
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "Confirm Password"),
          TextFormField(
            obscureText: true,
              decoration: InputDecoration(
            hintText: "*******",
          )),
        ],
      ),
    );
  }
}

class TextFieldName extends StatelessWidget {
  const TextFieldName({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Text(text,
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54)),
    );
  }
}
