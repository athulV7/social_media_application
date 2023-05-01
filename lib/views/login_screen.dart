import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menem_social_media/constants.dart';
import 'package:menem_social_media/views/bottom_navbar.dart';
import 'package:menem_social_media/views/widgets/richtext_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.1),
              const Text(
                'Login',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height * 0.06),
              const Text(
                'Email Address',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height * 0.01),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: textfieldDecoration(),
              ),
              SizedBox(height: height * 0.03),
              const Text(
                'Password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height * 0.01),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: textfieldDecoration(),
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forgot password?'),
                ),
              ),
              SizedBox(height: height * 0.02),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.06,
                      width: width / 1.2,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(BottomNavbar());
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.04),
                    const RichTextWidget(
                        text: "Don't have any account?", buttonText: "Sign Up"),
                    SizedBox(height: height * 0.01),
                    const RichTextWidget(
                        text: "You can also login with",
                        buttonText: "Mobile Number"),
                    SizedBox(height: height * 0.25),
                    const Text(
                      """The MeNeM Terms & Conditions and Privacy Policy are acknowledged by you by clicking "Continue with Email/Mobile number" above.""",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration textfieldDecoration() {
    return InputDecoration(
      //isDense: true,
      suffixIcon: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.visibility_off,
          size: 21,
          color: Colors.black,
        ),
      ),
      filled: true,
      fillColor: Colors.white70,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(10),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
