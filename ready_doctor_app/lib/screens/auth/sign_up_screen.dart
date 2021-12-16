import "package:flutter/material.dart";
import 'package:ready_doctor_app/constants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding (
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Create Account",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold)),
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
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)
                      ),
                      enabledBorder: OutlineInputBorder (
                     borderSide: BorderSide(color: primaryColor.withOpacity(0.1))
                    ),
                    )
                  ),
                ],
              ),
            )
          ],
        )
      ),
      ),
    );
  }
}
